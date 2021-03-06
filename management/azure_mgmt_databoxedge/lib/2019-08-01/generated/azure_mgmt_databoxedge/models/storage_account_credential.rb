# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # The storage account credential.
    #
    class StorageAccountCredential < ARMBaseModel

      include MsRestAzure

      # @return [String] Alias for the storage account.
      attr_accessor :alias_property

      # @return [String] Username for the storage account.
      attr_accessor :user_name

      # @return [AsymmetricEncryptedSecret] Encrypted storage key.
      attr_accessor :account_key

      # @return [String] Connection string for the storage account. Use this
      # string if username and account key are not specified.
      attr_accessor :connection_string

      # @return [SSLStatus] Signifies whether SSL needs to be enabled or not.
      # Possible values include: 'Enabled', 'Disabled'
      attr_accessor :ssl_status

      # @return [String] Blob end point for private clouds.
      attr_accessor :blob_domain_name

      # @return [AccountType] Type of storage accessed on the storage account.
      # Possible values include: 'GeneralPurposeStorage', 'BlobStorage'
      attr_accessor :account_type

      # @return [String] Id of the storage account.
      attr_accessor :storage_account_id


      #
      # Mapper for StorageAccountCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountCredential',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCredential',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              alias_property: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.alias',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accountKey',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              },
              connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectionString',
                type: {
                  name: 'String'
                }
              },
              ssl_status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sslStatus',
                type: {
                  name: 'String'
                }
              },
              blob_domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.blobDomainName',
                type: {
                  name: 'String'
                }
              },
              account_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.accountType',
                type: {
                  name: 'String'
                }
              },
              storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountId',
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
