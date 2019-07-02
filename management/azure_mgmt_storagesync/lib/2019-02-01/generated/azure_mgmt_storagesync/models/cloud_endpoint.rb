# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_02_01
  module Models
    #
    # Cloud Endpoint object.
    #
    class CloudEndpoint < ProxyResource

      include MsRestAzure

      # @return [String] Storage Account Resource Id
      attr_accessor :storage_account_resource_id

      # @return [String] Azure file share name
      attr_accessor :azure_file_share_name

      # @return [String] Storage Account Tenant Id
      attr_accessor :storage_account_tenant_id

      # @return [String] Partnership Id
      attr_accessor :partnership_id

      # @return [String] Friendly Name
      attr_accessor :friendly_name

      # @return [String] Backup Enabled
      attr_accessor :backup_enabled

      # @return [String] CloudEndpoint Provisioning State
      attr_accessor :provisioning_state

      # @return [String] CloudEndpoint lastWorkflowId
      attr_accessor :last_workflow_id

      # @return [String] Resource Last Operation Name
      attr_accessor :last_operation_name


      #
      # Mapper for CloudEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudEndpoint',
          type: {
            name: 'Composite',
            class_name: 'CloudEndpoint',
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
              storage_account_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountResourceId',
                type: {
                  name: 'String'
                }
              },
              azure_file_share_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureFileShareName',
                type: {
                  name: 'String'
                }
              },
              storage_account_tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountTenantId',
                type: {
                  name: 'String'
                }
              },
              partnership_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnershipId',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.backupEnabled',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              last_workflow_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastWorkflowId',
                type: {
                  name: 'String'
                }
              },
              last_operation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastOperationName',
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