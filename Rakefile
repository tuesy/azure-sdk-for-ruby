#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require "rake/testtask"
require "rubygems/package_task"

task :doc do
  system "yard --plugin yard-tomdoc -o doc/ -"
end

gem_spec = eval(File.read("./azure.gemspec"))
Gem::PackageTask.new(gem_spec) do |pkg|
  pkg.need_zip = false
  pkg.need_tar = false
end

namespace :test do
  task :require_environment do
    unset_environment = [
      ENV.fetch("AZURE_STORAGE_ACCOUNT",  nil),
      ENV.fetch("AZURE_STORAGE_ACCESS_KEY",    nil),
      ENV.fetch("AZURE_TABLE_HOST",    nil),
      ENV.fetch("AZURE_BLOB_HOST",     nil),
      ENV.fetch("AZURE_QUEUE_HOST",    nil),
      ENV.fetch("AZURE_SERVICEBUS_NAMESPACE", nil),
      ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY", nil),
      ENV.fetch("AZURE_SERVICEBUS_ISSUER",     nil)
    ].include?(nil)

    abort "[ABORTING] Configure your environment to run the integration tests" if unset_environment
  end

  Rake::TestTask.new :unit do |t|
    t.pattern = "test/unit/**/*_test.rb"
    t.verbose = true
    t.libs = ["lib", "test"]
  end
  
  namespace :unit do
    def component_task(component)
      Rake::TestTask.new component do |t|
        t.pattern = "test/unit/#{component}/**/*_test.rb"
        t.verbose = true
        t.libs = ["lib", "test"]
      end
      
      task component => "test:require_environment"
    end

    component_task :core
    component_task :storage
    component_task :service_bus
  end

  Rake::TestTask.new :integration do |t|
    t.pattern = "test/integration/**/*_test.rb"
    t.verbose = true
    t.libs = ["lib", "test"]
  end

  task :integration => :require_environment

  namespace :integration do
    def component_task(component)
      Rake::TestTask.new component do |t|
        t.pattern = "test/integration/#{component}/**/*_test.rb"
        t.verbose = true
        t.libs = ["lib", "test"]
      end

      task component => "test:require_environment"
    end

    component_task :tables
    component_task :blobs
    component_task :queues
    component_task :service_bus
  end

  task :cleanup => :require_environment do
    $:.unshift "lib"
    require 'azure'

    Azure.configure do |config|
      config.access_key     = ENV.fetch("AZURE_STORAGE_ACCESS_KEY")
      config.account_name   = ENV.fetch("AZURE_STORAGE_ACCOUNT")
      config.table_host     = ENV.fetch("AZURE_TABLE_HOST")
      config.blob_host      = ENV.fetch("AZURE_BLOB_HOST")
      config.queue_host     = ENV.fetch("AZURE_QUEUE_HOST")

      config.acs_namespace  = ENV.fetch("AZURE_SERVICEBUS_NAMESPACE")
      config.sb_access_key  = ENV.fetch("AZURE_SERVICEBUS_ACCESS_KEY")
      config.sb_issuer      = ENV.fetch("AZURE_SERVICEBUS_ISSUER")
    end

    Azure::Tables.all.map(&:delete)
    Azure::Blobs.containers.map(&:delete)
    Azure::Queues.all.map(&:delete)
    Azure::ServiceBus::Queues.list.map(&:delete)
    Azure::ServiceBus::Topics.list.map(&:delete)
  end
end

task :test => ["test:unit", "test:integration"]

task :default => :test
