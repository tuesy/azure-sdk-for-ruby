# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # The instance view of a virtual machine boot diagnostics.
    #
    class BootDiagnosticsInstanceView

      include MsRestAzure

      # @return [String] The console screenshot blob URI.
      attr_accessor :console_screenshot_blob_uri

      # @return [String] The Linux serial console log blob Uri.
      attr_accessor :serial_console_log_blob_uri


      #
      # Mapper for BootDiagnosticsInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BootDiagnosticsInstanceView',
          type: {
            name: 'Composite',
            class_name: 'BootDiagnosticsInstanceView',
            model_properties: {
              console_screenshot_blob_uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'consoleScreenshotBlobUri',
                type: {
                  name: 'String'
                }
              },
              serial_console_log_blob_uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serialConsoleLogBlobUri',
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
