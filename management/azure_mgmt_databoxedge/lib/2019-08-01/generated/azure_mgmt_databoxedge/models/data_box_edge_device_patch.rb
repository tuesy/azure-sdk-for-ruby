# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # The Data Box Edge/Gateway device patch.
    #
    class DataBoxEdgeDevicePatch

      include MsRestAzure

      # @return [Hash{String => String}] The tags attached to the Data Box
      # Edge/Gateway resource.
      attr_accessor :tags


      #
      # Mapper for DataBoxEdgeDevicePatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataBoxEdgeDevicePatch',
          type: {
            name: 'Composite',
            class_name: 'DataBoxEdgeDevicePatch',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
