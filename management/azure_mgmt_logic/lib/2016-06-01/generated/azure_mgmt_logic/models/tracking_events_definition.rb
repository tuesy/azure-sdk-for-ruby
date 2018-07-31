# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # Model object.
    #
    #
    class TrackingEventsDefinition

      include MsRestAzure

      # @return [String]
      attr_accessor :source_type

      # @return [TrackEventsOperationOptions] Possible values include: 'None',
      # 'DisableSourceInfoEnrich'
      attr_accessor :track_events_options

      # @return [Array<TrackingEvent>]
      attr_accessor :events


      #
      # Mapper for TrackingEventsDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrackingEventsDefinition',
          type: {
            name: 'Composite',
            class_name: 'TrackingEventsDefinition',
            model_properties: {
              source_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceType',
                type: {
                  name: 'String'
                }
              },
              track_events_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trackEventsOptions',
                type: {
                  name: 'Enum',
                  module: 'TrackEventsOperationOptions'
                }
              },
              events: {
                client_side_validation: true,
                required: true,
                serialized_name: 'events',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TrackingEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrackingEvent'
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