# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the hostname properties for http routing.
    #
    class HttpHostConfig

      include MsRestAzure

      # @return [String] http hostname config name.
      attr_accessor :name

      # @return [Array<HttpRouteConfig>] Route information to use for routing.
      # Routes are processed in the order they are specified. Specify routes
      # that are more specific before routes that can hamdle general cases.
      attr_accessor :routes


      #
      # Mapper for HttpHostConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpHostConfig',
          type: {
            name: 'Composite',
            class_name: 'HttpHostConfig',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              routes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'routes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HttpRouteConfigElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HttpRouteConfig'
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