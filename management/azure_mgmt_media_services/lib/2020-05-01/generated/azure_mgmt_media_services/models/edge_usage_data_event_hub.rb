# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Model object.
    #
    #
    class EdgeUsageDataEventHub

      include MsRestAzure

      # @return [String] Name of the Event Hub where usage will be reported.
      attr_accessor :name

      # @return [String] Namespace of the Event Hub where usage will be
      # reported.
      attr_accessor :namespace

      # @return [String] SAS token needed to interact with Event Hub.
      attr_accessor :token


      #
      # Mapper for EdgeUsageDataEventHub class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EdgeUsageDataEventHub',
          type: {
            name: 'Composite',
            class_name: 'EdgeUsageDataEventHub',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              namespace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'namespace',
                type: {
                  name: 'String'
                }
              },
              token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'token',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
