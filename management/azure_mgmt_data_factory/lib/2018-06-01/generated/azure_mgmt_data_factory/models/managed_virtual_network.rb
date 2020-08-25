# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A managed Virtual Network associated with the Azure Data Factory
    #
    class ManagedVirtualNetwork

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] Managed Virtual Network ID.
      attr_accessor :v_net_id

      # @return [String] Managed Virtual Network alias.
      attr_accessor :alias_property


      #
      # Mapper for ManagedVirtualNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedVirtualNetwork',
          type: {
            name: 'Composite',
            class_name: 'ManagedVirtualNetwork',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              v_net_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vNetId',
                type: {
                  name: 'String'
                }
              },
              alias_property: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alias',
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
