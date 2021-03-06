# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The agentpool that has the ARM resource and properties.
    # The agentpool will have all information to create an agent pool.
    #
    class AgentPool < Resource

      include MsRestAzure

      # @return [Integer] The count of agent machine
      attr_accessor :count

      # @return [String] The Tier of agent machine
      attr_accessor :tier

      # @return [OS] The OS of agent machine. Possible values include:
      # 'Windows', 'Linux'
      attr_accessor :os

      # @return [String] The Virtual Network Subnet Resource Id of the agent
      # machine
      attr_accessor :virtual_network_subnet_resource_id

      # @return [ProvisioningState] The provisioning state of this agent pool.
      # Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :provisioning_state


      #
      # Mapper for AgentPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AgentPool',
          type: {
            name: 'Composite',
            class_name: 'AgentPool',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
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
              system_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.count',
                type: {
                  name: 'Number'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tier',
                type: {
                  name: 'String'
                }
              },
              os: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.os',
                type: {
                  name: 'String'
                }
              },
              virtual_network_subnet_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkSubnetResourceId',
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
              }
            }
          }
        }
      end
    end
  end
end
