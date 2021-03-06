# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  module Models
    #
    # List of assessments.
    #
    class AssessmentResultList

      include MsRestAzure

      # @return [Array<Assessment>] List of assessments.
      attr_accessor :value


      #
      # Mapper for AssessmentResultList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AssessmentResultList',
          type: {
            name: 'Composite',
            class_name: 'AssessmentResultList',
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
                      serialized_name: 'AssessmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Assessment'
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
