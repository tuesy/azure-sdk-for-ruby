# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_0
  module Models
    #
    # Result of AreaOfInterest operation.
    #
    class AreaOfInterestResult

      include MsRestAzure

      # @return [BoundingRect] A bounding box for an area of interest inside an
      # image.
      attr_accessor :area_of_interest

      # @return [String] Id of the REST API request.
      attr_accessor :request_id

      # @return [ImageMetadata]
      attr_accessor :metadata


      #
      # Mapper for AreaOfInterestResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AreaOfInterestResult',
          type: {
            name: 'Composite',
            class_name: 'AreaOfInterestResult',
            model_properties: {
              area_of_interest: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'areaOfInterest',
                type: {
                  name: 'Composite',
                  class_name: 'BoundingRect'
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'ImageMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end
