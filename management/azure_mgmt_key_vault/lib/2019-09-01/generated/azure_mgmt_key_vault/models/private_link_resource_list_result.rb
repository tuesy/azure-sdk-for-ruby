# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2019_09_01
  module Models
    #
    # A list of private link resources
    #
    class PrivateLinkResourceListResult

      include MsRestAzure

      # @return [Array<PrivateLinkResource>] Array of private link resources
      attr_accessor :value


      #
      # Mapper for PrivateLinkResourceListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkResourceListResult',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkResourceListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateLinkResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateLinkResource'
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
