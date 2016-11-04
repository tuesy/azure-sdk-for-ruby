# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_machine_learning/module_definition'
require 'ms_rest_azure'

module Azure::ARM::MachineLearning
  autoload :WebServices,                                        'generated/azure_mgmt_machine_learning/web_services.rb'
  autoload :AzureMLWebServicesManagementClient,                 'generated/azure_mgmt_machine_learning/azure_mlweb_services_management_client.rb'

  module Models
    autoload :AssetItem,                                          'generated/azure_mgmt_machine_learning/models/asset_item.rb'
    autoload :AssetLocation,                                      'generated/azure_mgmt_machine_learning/models/asset_location.rb'
    autoload :WebServiceProperties,                               'generated/azure_mgmt_machine_learning/models/web_service_properties.rb'
    autoload :InputPort,                                          'generated/azure_mgmt_machine_learning/models/input_port.rb'
    autoload :RealtimeConfiguration,                              'generated/azure_mgmt_machine_learning/models/realtime_configuration.rb'
    autoload :OutputPort,                                         'generated/azure_mgmt_machine_learning/models/output_port.rb'
    autoload :StorageAccount,                                     'generated/azure_mgmt_machine_learning/models/storage_account.rb'
    autoload :ModuleAssetParameter,                               'generated/azure_mgmt_machine_learning/models/module_asset_parameter.rb'
    autoload :CommitmentPlan,                                     'generated/azure_mgmt_machine_learning/models/commitment_plan.rb'
    autoload :ModeValueInfo,                                      'generated/azure_mgmt_machine_learning/models/mode_value_info.rb'
    autoload :TableSpecification,                                 'generated/azure_mgmt_machine_learning/models/table_specification.rb'
    autoload :ColumnSpecification,                                'generated/azure_mgmt_machine_learning/models/column_specification.rb'
    autoload :PaginatedWebServicesList,                           'generated/azure_mgmt_machine_learning/models/paginated_web_services_list.rb'
    autoload :WebServiceKeys,                                     'generated/azure_mgmt_machine_learning/models/web_service_keys.rb'
    autoload :GraphPackage,                                       'generated/azure_mgmt_machine_learning/models/graph_package.rb'
    autoload :MachineLearningWorkspace,                           'generated/azure_mgmt_machine_learning/models/machine_learning_workspace.rb'
    autoload :GraphNode,                                          'generated/azure_mgmt_machine_learning/models/graph_node.rb'
    autoload :ExampleRequest,                                     'generated/azure_mgmt_machine_learning/models/example_request.rb'
    autoload :GraphEdge,                                          'generated/azure_mgmt_machine_learning/models/graph_edge.rb'
    autoload :ServiceInputOutputSpecification,                    'generated/azure_mgmt_machine_learning/models/service_input_output_specification.rb'
    autoload :GraphParameter,                                     'generated/azure_mgmt_machine_learning/models/graph_parameter.rb'
    autoload :DiagnosticsConfiguration,                           'generated/azure_mgmt_machine_learning/models/diagnostics_configuration.rb'
    autoload :GraphParameterLink,                                 'generated/azure_mgmt_machine_learning/models/graph_parameter_link.rb'
    autoload :WebService,                                         'generated/azure_mgmt_machine_learning/models/web_service.rb'
    autoload :WebServicePropertiesForGraph,                       'generated/azure_mgmt_machine_learning/models/web_service_properties_for_graph.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_machine_learning/models/provisioning_state.rb'
    autoload :DiagnosticsLevel,                                   'generated/azure_mgmt_machine_learning/models/diagnostics_level.rb'
    autoload :ColumnType,                                         'generated/azure_mgmt_machine_learning/models/column_type.rb'
    autoload :ColumnFormat,                                       'generated/azure_mgmt_machine_learning/models/column_format.rb'
    autoload :AssetType,                                          'generated/azure_mgmt_machine_learning/models/asset_type.rb'
    autoload :InputPortType,                                      'generated/azure_mgmt_machine_learning/models/input_port_type.rb'
    autoload :OutputPortType,                                     'generated/azure_mgmt_machine_learning/models/output_port_type.rb'
    autoload :ParameterType,                                      'generated/azure_mgmt_machine_learning/models/parameter_type.rb'
  end
end
