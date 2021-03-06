# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Log location settings.
    #
    class LogLocationSettings

      include MsRestAzure

      # @return [LinkedServiceReference] Log storage linked service reference.
      attr_accessor :linked_service_name

      # @return The path to storage for storing detailed logs of activity
      # execution. Type: string (or Expression with resultType string).
      attr_accessor :path


      #
      # Mapper for LogLocationSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogLocationSettings',
          type: {
            name: 'Composite',
            class_name: 'LogLocationSettings',
            model_properties: {
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
