# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2020_06_01
  module Models
    #
    # Resource filter.
    #
    class GenericResourceFilter

      include MsRestAzure

      # @return [String] The resource type.
      attr_accessor :resource_type

      # @return [String] The tag name.
      attr_accessor :tagname

      # @return [String] The tag value.
      attr_accessor :tagvalue


      #
      # Mapper for GenericResourceFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenericResourceFilter',
          type: {
            name: 'Composite',
            class_name: 'GenericResourceFilter',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              tagname: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tagname',
                type: {
                  name: 'String'
                }
              },
              tagvalue: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tagvalue',
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
