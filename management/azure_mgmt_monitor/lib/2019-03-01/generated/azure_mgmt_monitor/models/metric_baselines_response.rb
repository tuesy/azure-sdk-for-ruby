# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2019_03_01
  module Models
    #
    # A list of metric baselines.
    #
    class MetricBaselinesResponse

      include MsRestAzure

      # @return [Array<SingleMetricBaseline>] The list of metric baselines.
      attr_accessor :value


      #
      # Mapper for MetricBaselinesResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricBaselinesResponse',
          type: {
            name: 'Composite',
            class_name: 'MetricBaselinesResponse',
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
                      serialized_name: 'SingleMetricBaselineElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SingleMetricBaseline'
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
