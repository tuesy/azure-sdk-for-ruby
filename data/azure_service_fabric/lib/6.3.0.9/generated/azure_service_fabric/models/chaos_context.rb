# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes a map, which is a collection of (string, string) type key-value
    # pairs. The map can be used to record information about
    # the Chaos run. There cannot be more than 100 such pairs and each string
    # (key or value) can be at most 4095 characters long.
    # This map is set by the starter of the Chaos run to optionally store the
    # context about the specific run.
    #
    class ChaosContext

      include MsRestAzure

      # @return [Hash{String => String}] Describes a map that contains a
      # collection of ChaosContextMapItem's.
      attr_accessor :map


      #
      # Mapper for ChaosContext class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChaosContext',
          type: {
            name: 'Composite',
            class_name: 'ChaosContext',
            model_properties: {
              map: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Map',
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
