# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # A2A container mapping input.
    #
    class A2AContainerMappingInput < ReplicationProviderSpecificContainerMappingInput

      include MsRestAzure


      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [AgentAutoUpdateStatus] A value indicating whether the auto
      # update is enabled. Possible values include: 'Disabled', 'Enabled'
      attr_accessor :agent_auto_update_status

      # @return [String] The automation account arm id.
      attr_accessor :automation_account_arm_id


      #
      # Mapper for A2AContainerMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2AContainerMappingInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              agent_auto_update_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentAutoUpdateStatus',
                type: {
                  name: 'String'
                }
              },
              automation_account_arm_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'automationAccountArmId',
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
