#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "integration/test_helper"

describe "ServiceBus Queues" do

  subject { Azure::ServiceBus::ServiceBus.new }
  let(:name) { ServiceBusQueueNameHelper.name }
  let(:description) {{
    'LockDuration' => 'PT30S',
    'DefaultMessageTimeToLive' => 'P10675199DT2H48M5.4775807S',
    'DuplicateDetectionHistoryTimeWindow' => 'PT10M',
    'MaxSizeInMegabytes' => "1",
    'RequiresDuplicateDetection' => "true",
    'RequiresSession' => "false",
    'DeadLetteringOnMessageExpiration' => "false"
  }}

  after { ServiceBusQueueNameHelper.clean }

  it "should be able to create a new queue from a string" do
    queue = subject.create_queue name
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
  end

  it "should be able to create a new queue from a string and description Hash" do
    queue = subject.create_queue name, { :description => description }
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
    queue.max_size_in_mb.must_equal 1
    queue.requires_duplicate_detection.must_equal true
  end

  it "should be able to create a new queue from a Queue" do
    queue = subject.create_queue Azure::ServiceBus::Queue.new(name)
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
  end

  it "should be able to create a new queue from a Queue with a description Hash" do
    queue = subject.create_queue Azure::ServiceBus::Queue.new(name, description)
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
    queue.max_size_in_mb.must_equal 1
    queue.requires_duplicate_detection.must_equal true
  end

  describe 'when a queue exists' do
    before { subject.create_queue name, { :description => description } }

    describe '#delete_queue' do
      it "should raise exception if the queue cannot be deleted" do
        assert_raises(Azure::Core::Http::HTTPError) do
          subject.delete_queue ServiceBusQueueNameHelper.name
        end
      end

      it "should be able to delete the queue" do
        response = subject.delete_queue name
        response.must_equal nil
      end
    end

    describe "#get_queue" do
      it "should be able to get a queue by name" do
        result = subject.get_queue name

        result.must_be_kind_of Azure::ServiceBus::Queue
        result.name.must_equal name
      end

      it "if the queue doesn't exists it should throw" do
        assert_raises(Azure::Core::Http::HTTPError) do
          subject.get_queue ServiceBusQueueNameHelper.name
        end
      end
    end

    describe 'when there are multiple queues' do
      let(:name1) { ServiceBusQueueNameHelper.name }
      let(:name2) { ServiceBusQueueNameHelper.name }
      before { 
        subject.create_queue name1, description
        subject.create_queue name2, description
      }
      
      it "should be able to get a list of queues" do
        result = subject.list_queues

        result.must_be :kind_of?, Array
        q_found = false
        q1_found = false
        q2_found = false
        result.each { |q|
          q_found = true if q.name == name
          q1_found = true if q.name == name1
          q2_found = true if q.name == name2
        }
        assert (q_found and q1_found and q2_found), "list_queues did not return expected queues"
      end

      it "should be able to use $skip token with list_queues" do
        result = subject.list_queues
        result2 = subject.list_queues({ :skip => 1 })
        result2.length.must_equal result.length - 1
        result2[0].id.must_equal result[1].id
      end
      
      it "should be able to use $top token with list_queues" do
        result = subject.list_queues
        result.length.wont_equal 1

        result2 = subject.list_queues({ :top => 1 })
        result2.length.must_equal 1
      end

      it "should be able to use $skip and $top token together with list_queues" do
        result = subject.list_queues
        result2 = subject.list_queues({ :skip => 1, :top => 1 })
        result2.length.must_equal 1
        result2[0].id.must_equal result[1].id
      end
    end

    it "should be able to send a message to a queue" do
      msg = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
        m.to = "yo"
      end
      res = subject.send_queue_message name, msg
      res.must_be_nil
    end

    describe "when the queue has messages" do
      let(:messageContent) { 'messagecontent' }  
      let(:to) { 'yo' }
      let(:label) { 'my_label' }
      let(:properties) { {"prop1"=> "val1"} }
      let(:msg) { m = Azure::ServiceBus::BrokeredMessage.new(messageContent, properties); m.to = 'me'; m }
      
      before { subject.send_queue_message name, msg }
      
      it "should be able to peek a message from a queue" do
        retrieved = subject.peek_lock_queue_message name
        retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage

        retrieved.body.must_equal msg.body
        retrieved.to.must_equal msg.to
        retrieved.label.must_equal msg.label
        retrieved.properties['prop1'].must_equal 'val1'

        refute retrieved.lock_token.nil?
        refute retrieved.sequence_number.nil?
      end

      it "should be able to read-delete a message from a queue" do
        retrieved = subject.read_delete_queue_message name

        retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
        retrieved.body.must_equal msg.body
        retrieved.to.must_equal msg.to

        # it should be deleted
        retrieved = subject.read_delete_queue_message name, { :timeout => 2 }
        retrieved.must_be_nil
      end

      it "should be able to unlock a message from a queue" do
        retrieved = subject.peek_lock_queue_message name, { :timeout => 2 }

        # There shouldn't be an available message in the queue
        retrieved2 = subject.peek_lock_queue_message name, { :timeout => 2 }
        retrieved2.must_be_nil

        # Unlock the message
        res = subject.unlock_queue_message name, retrieved.sequence_number, retrieved.lock_token
        res.must_be_nil

        # The message should be available once again
        retrieved = subject.peek_lock_queue_message name, { :timeout => 2 }
        retrieved.body.must_equal msg.body
      end
    
      it "should be able to delete a message from a queue" do

        retrieved = subject.peek_lock_queue_message name
        retrieved.body.must_equal msg.body

        subject.delete_queue_message name, retrieved.sequence_number, retrieved.lock_token

        # it should be deleted
        retrieved = subject.peek_lock_queue_message name, { :timeout => 2 }
        assert_nil retrieved
      end

      it "should be able to read a message from a queue" do
        subject.send_queue_message name, msg
        retrieved = subject.receive_queue_message name

        retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
        retrieved.body.must_equal msg.body
        retrieved.to.must_equal msg.to
      end
    end
  end
end