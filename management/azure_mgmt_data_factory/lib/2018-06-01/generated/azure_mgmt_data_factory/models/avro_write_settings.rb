# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Avro write settings.
    #
    class AvroWriteSettings < FormatWriteSettings

      include MsRestAzure


      def initialize
        @type = "AvroWriteSettings"
      end

      attr_accessor :type

      # @return [String] Top level record name in write result, which is
      # required in AVRO spec.
      attr_accessor :record_name

      # @return [String] Record namespace in the write result.
      attr_accessor :record_namespace

      # @return Limit the written file's row count to be smaller than or equal
      # to the specified count. Type: integer (or Expression with resultType
      # integer).
      attr_accessor :max_rows_per_file

      # @return Specifies the file name pattern
      # <fileNamePrefix>_<fileIndex>.<fileExtension> when copy from non-file
      # based store without partitionOptions. Type: string (or Expression with
      # resultType string).
      attr_accessor :file_name_prefix


      #
      # Mapper for AvroWriteSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvroWriteSettings',
          type: {
            name: 'Composite',
            class_name: 'AvroWriteSettings',
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
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              record_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recordName',
                type: {
                  name: 'String'
                }
              },
              record_namespace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recordNamespace',
                type: {
                  name: 'String'
                }
              },
              max_rows_per_file: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxRowsPerFile',
                type: {
                  name: 'Object'
                }
              },
              file_name_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileNamePrefix',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
