# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # The instance view of a virtual machine.
    #
    class VirtualMachineInstanceView

      include MsRestAzure

      # @return [Integer] Specifies the update domain of the virtual machine.
      attr_accessor :platform_update_domain

      # @return [Integer] Specifies the fault domain of the virtual machine.
      attr_accessor :platform_fault_domain

      # @return [String] The computer name assigned to the virtual machine.
      attr_accessor :computer_name

      # @return [String] The Operating System running on the virtual machine.
      attr_accessor :os_name

      # @return [String] The version of Operating System running on the virtual
      # machine.
      attr_accessor :os_version

      # @return [HyperVGenerationType] Specifies the HyperVGeneration Type
      # associated with a resource. Possible values include: 'V1', 'V2'
      attr_accessor :hyper_vgeneration

      # @return [String] The Remote desktop certificate thumbprint.
      attr_accessor :rdp_thumb_print

      # @return [VirtualMachineAgentInstanceView] The VM Agent running on the
      # virtual machine.
      attr_accessor :vm_agent

      # @return [MaintenanceRedeployStatus] The Maintenance Operation status on
      # the virtual machine.
      attr_accessor :maintenance_redeploy_status

      # @return [Array<DiskInstanceView>] The virtual machine disk information.
      attr_accessor :disks

      # @return [Array<VirtualMachineExtensionInstanceView>] The extensions
      # information.
      attr_accessor :extensions

      # @return [BootDiagnosticsInstanceView] Boot Diagnostics is a debugging
      # feature which allows you to view Console Output and Screenshot to
      # diagnose VM status. <br><br> You can easily view the output of your
      # console log. <br><br> Azure also enables you to see a screenshot of the
      # VM from the hypervisor.
      attr_accessor :boot_diagnostics

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for VirtualMachineInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineInstanceView',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineInstanceView',
            model_properties: {
              platform_update_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platformUpdateDomain',
                type: {
                  name: 'Number'
                }
              },
              platform_fault_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platformFaultDomain',
                type: {
                  name: 'Number'
                }
              },
              computer_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computerName',
                type: {
                  name: 'String'
                }
              },
              os_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osName',
                type: {
                  name: 'String'
                }
              },
              os_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osVersion',
                type: {
                  name: 'String'
                }
              },
              hyper_vgeneration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hyperVGeneration',
                type: {
                  name: 'String'
                }
              },
              rdp_thumb_print: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rdpThumbPrint',
                type: {
                  name: 'String'
                }
              },
              vm_agent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmAgent',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineAgentInstanceView'
                }
              },
              maintenance_redeploy_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maintenanceRedeployStatus',
                type: {
                  name: 'Composite',
                  class_name: 'MaintenanceRedeployStatus'
                }
              },
              disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskInstanceViewElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskInstanceView'
                      }
                  }
                }
              },
              extensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineExtensionInstanceViewElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineExtensionInstanceView'
                      }
                  }
                }
              },
              boot_diagnostics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bootDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'BootDiagnosticsInstanceView'
                }
              },
              statuses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
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
