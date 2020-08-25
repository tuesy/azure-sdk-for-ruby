# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AzureStackHCI::Mgmt::V2020_03_01_preview
  module Models
    #
    # Cluster details.
    #
    class Cluster < TrackedResource

      include MsRestAzure

      # @return [ProvisioningState] Provisioning state. Possible values
      # include: 'Succeeded', 'Failed', 'Canceled', 'Accepted', 'Provisioning'
      attr_accessor :provisioning_state

      # @return [Status] Status of the cluster agent. Possible values include:
      # 'NeverConnected', 'ConnectedRecently', 'NotConnectedRecently',
      # 'Expired', 'Error'
      attr_accessor :status

      # @return [String] Unique, immutable resource id.
      attr_accessor :cloud_id

      # @return [String] App id of cluster AAD identity.
      attr_accessor :aad_client_id

      # @return [String] Tenant id of cluster AAD identity.
      attr_accessor :aad_tenant_id

      # @return [ClusterReportedProperties] Properties reported by cluster
      # agent.
      attr_accessor :reported_properties

      # @return [Float] Number of days remaining in the trial period.
      attr_accessor :trial_days_remaining

      # @return [String] Type of billing applied to the resource.
      attr_accessor :billing_model


      #
      # Mapper for Cluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cluster',
          type: {
            name: 'Composite',
            class_name: 'Cluster',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              cloud_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.cloudId',
                type: {
                  name: 'String'
                }
              },
              aad_client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.aadClientId',
                type: {
                  name: 'String'
                }
              },
              aad_tenant_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.aadTenantId',
                type: {
                  name: 'String'
                }
              },
              reported_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reportedProperties',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterReportedProperties'
                }
              },
              trial_days_remaining: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.trialDaysRemaining',
                type: {
                  name: 'Double'
                }
              },
              billing_model: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingModel',
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
