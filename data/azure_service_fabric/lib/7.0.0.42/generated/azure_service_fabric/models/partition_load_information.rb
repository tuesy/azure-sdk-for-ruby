# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Represents load information for a partition, which contains the primary
    # and secondary reported load metrics.
    # In case there is no load reported, PartitionLoadInformation will contain
    # the default load for the service of the partition.
    # For default loads, LoadMetricReport's LastReportedUtc is set to 0.
    #
    class PartitionLoadInformation

      include MsRestAzure

      # @return Id of the partition.
      attr_accessor :partition_id

      # @return [Array<LoadMetricReport>] Array of load reports from the
      # primary replica for this partition.
      attr_accessor :primary_load_metric_reports

      # @return [Array<LoadMetricReport>] Array of aggregated load reports from
      # all secondary replicas for this partition.
      # Array only contains the latest reported load for each metric.
      attr_accessor :secondary_load_metric_reports


      #
      # Mapper for PartitionLoadInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionLoadInformation',
          type: {
            name: 'Composite',
            class_name: 'PartitionLoadInformation',
            model_properties: {
              partition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionId',
                type: {
                  name: 'String'
                }
              },
              primary_load_metric_reports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PrimaryLoadMetricReports',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadMetricReportElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadMetricReport'
                      }
                  }
                }
              },
              secondary_load_metric_reports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SecondaryLoadMetricReports',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadMetricReportElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadMetricReport'
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
