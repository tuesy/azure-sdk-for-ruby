# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A server secure connection policy.
    #
    class ServerConnectionPolicy < ProxyResource

      include MsRestAzure

      # @return [String] Metadata used for the Azure portal experience.
      attr_accessor :kind

      # @return [String] Resource location.
      attr_accessor :location

      # @return [ServerConnectionType] The server connection type. Possible
      # values include: 'Default', 'Proxy', 'Redirect'
      attr_accessor :connection_type


      #
      # Mapper for ServerConnectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerConnectionPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServerConnectionPolicy',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              connection_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.connectionType',
                type: {
                  name: 'Enum',
                  module: 'ServerConnectionType'
                }
              }
            }
          }
        }
      end
    end
  end
end