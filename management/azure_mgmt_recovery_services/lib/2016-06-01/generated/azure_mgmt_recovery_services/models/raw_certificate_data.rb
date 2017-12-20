# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Raw certificate data.
    #
    class RawCertificateData

      include MsRestAzure

      # @return [AuthType] Specifies the authentication type. Possible values
      # include: 'Invalid', 'ACS', 'AAD', 'AccessControlService',
      # 'AzureActiveDirectory'
      attr_accessor :auth_type

      # @return [Array<Integer>] The base64 encoded certificate raw data string
      attr_accessor :certificate


      #
      # Mapper for RawCertificateData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RawCertificateData',
          type: {
            name: 'Composite',
            class_name: 'RawCertificateData',
            model_properties: {
              auth_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authType',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end