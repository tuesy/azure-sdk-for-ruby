# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # Encryption at rest settings for disk or snapshot
    #
    class Encryption

      include MsRestAzure

      # @return [String] ResourceId of the disk encryption set to use for
      # enabling encryption at rest.
      attr_accessor :disk_encryption_set_id

      # @return [EncryptionType] The type of key used to encrypt the data of
      # the disk. Possible values include: 'EncryptionAtRestWithPlatformKey',
      # 'EncryptionAtRestWithCustomerKey'
      attr_accessor :type


      #
      # Mapper for Encryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Encryption',
          type: {
            name: 'Composite',
            class_name: 'Encryption',
            model_properties: {
              disk_encryption_set_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskEncryptionSetId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
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
