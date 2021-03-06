# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_01_01
  module Models
    #
    # The configuration of dataset in the query.
    #
    class QueryDatasetConfiguration

      include MsRestAzure

      # @return [Array<String>] Array of column names to be included in the
      # query. Any valid query column name is allowed. If not provided, then
      # query includes all columns.
      attr_accessor :columns


      #
      # Mapper for QueryDatasetConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryDatasetConfiguration',
          type: {
            name: 'Composite',
            class_name: 'QueryDatasetConfiguration',
            model_properties: {
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
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
