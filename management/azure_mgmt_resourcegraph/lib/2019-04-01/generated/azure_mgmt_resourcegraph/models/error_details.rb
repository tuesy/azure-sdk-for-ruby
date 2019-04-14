# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceGraph::Mgmt::V2019_04_01
  module Models
    #
    # Error details.
    #
    #
    class ErrorDetails

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] Error code identifying the specific error.
      attr_accessor :code

      # @return [String] A human readable error message.
      attr_accessor :message


      #
      # Mapper for ErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetails',
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
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
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