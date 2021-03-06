# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents health evaluation of a HealthEvent that was reported on the
    # entity.
    # The health evaluation is returned when evaluating health of an entity
    # results in Error or Warning.
    #
    class EventHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "Event"
      end

      attr_accessor :Kind

      # @return [Boolean] Indicates whether warnings are treated with the same
      # severity as errors. The field is specified in the health policy used to
      # evaluate the entity.
      attr_accessor :consider_warning_as_error

      # @return [HealthEvent] Represents health information reported on a
      # health entity, such as cluster, application or node, with additional
      # metadata added by the Health Manager.
      attr_accessor :unhealthy_event


      #
      # Mapper for EventHealthEvaluation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Event',
          type: {
            name: 'Composite',
            class_name: 'EventHealthEvaluation',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              consider_warning_as_error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConsiderWarningAsError',
                type: {
                  name: 'Boolean'
                }
              },
              unhealthy_event: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvent',
                type: {
                  name: 'Composite',
                  class_name: 'HealthEvent'
                }
              }
            }
          }
        }
      end
    end
  end
end
