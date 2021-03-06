# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A database query.
    #
    class QueryInterval

      include MsRestAzure

      # @return [DateTime] The start time of the measurement interval (ISO8601
      # format).
      attr_accessor :interval_start_time

      # @return [Float] The number of times the query was executed during this
      # interval.
      attr_accessor :execution_count

      # @return [Array<QueryMetric>] The list of query metrics during this
      # interval.
      attr_accessor :metrics


      #
      # Mapper for QueryInterval class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryInterval',
          type: {
            name: 'Composite',
            class_name: 'QueryInterval',
            model_properties: {
              interval_start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'intervalStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              execution_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'executionCount',
                type: {
                  name: 'Double'
                }
              },
              metrics: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'metrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QueryMetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QueryMetric'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
