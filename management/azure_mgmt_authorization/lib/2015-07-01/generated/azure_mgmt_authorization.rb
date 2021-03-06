# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require '2015-07-01/generated/azure_mgmt_authorization/module_definition'
require 'ms_rest_azure'

module Azure::Authorization::Mgmt::V2015_07_01
  autoload :Permissions,                                        '2015-07-01/generated/azure_mgmt_authorization/permissions.rb'
  autoload :ProviderOperationsMetadataOperations,               '2015-07-01/generated/azure_mgmt_authorization/provider_operations_metadata_operations.rb'
  autoload :RoleAssignments,                                    '2015-07-01/generated/azure_mgmt_authorization/role_assignments.rb'
  autoload :RoleDefinitions,                                    '2015-07-01/generated/azure_mgmt_authorization/role_definitions.rb'
  autoload :ClassicAdministrators,                              '2015-07-01/generated/azure_mgmt_authorization/classic_administrators.rb'
  autoload :AuthorizationManagementClient,                      '2015-07-01/generated/azure_mgmt_authorization/authorization_management_client.rb'

  module Models
    autoload :RoleAssignment,                                     '2015-07-01/generated/azure_mgmt_authorization/models/role_assignment.rb'
    autoload :RoleAssignmentListResult,                           '2015-07-01/generated/azure_mgmt_authorization/models/role_assignment_list_result.rb'
    autoload :RoleDefinitionFilter,                               '2015-07-01/generated/azure_mgmt_authorization/models/role_definition_filter.rb'
    autoload :RoleAssignmentProperties,                           '2015-07-01/generated/azure_mgmt_authorization/models/role_assignment_properties.rb'
    autoload :PermissionGetResult,                                '2015-07-01/generated/azure_mgmt_authorization/models/permission_get_result.rb'
    autoload :RoleAssignmentCreateParameters,                     '2015-07-01/generated/azure_mgmt_authorization/models/role_assignment_create_parameters.rb'
    autoload :ResourceType,                                       '2015-07-01/generated/azure_mgmt_authorization/models/resource_type.rb'
    autoload :RoleDefinitionProperties,                           '2015-07-01/generated/azure_mgmt_authorization/models/role_definition_properties.rb'
    autoload :ProviderOperationsMetadataListResult,               '2015-07-01/generated/azure_mgmt_authorization/models/provider_operations_metadata_list_result.rb'
    autoload :RoleDefinition,                                     '2015-07-01/generated/azure_mgmt_authorization/models/role_definition.rb'
    autoload :RoleAssignmentFilter,                               '2015-07-01/generated/azure_mgmt_authorization/models/role_assignment_filter.rb'
    autoload :RoleDefinitionListResult,                           '2015-07-01/generated/azure_mgmt_authorization/models/role_definition_list_result.rb'
    autoload :ProviderOperation,                                  '2015-07-01/generated/azure_mgmt_authorization/models/provider_operation.rb'
    autoload :ClassicAdministratorProperties,                     '2015-07-01/generated/azure_mgmt_authorization/models/classic_administrator_properties.rb'
    autoload :RoleAssignmentPropertiesWithScope,                  '2015-07-01/generated/azure_mgmt_authorization/models/role_assignment_properties_with_scope.rb'
    autoload :ClassicAdministrator,                               '2015-07-01/generated/azure_mgmt_authorization/models/classic_administrator.rb'
    autoload :ProviderOperationsMetadata,                         '2015-07-01/generated/azure_mgmt_authorization/models/provider_operations_metadata.rb'
    autoload :ClassicAdministratorListResult,                     '2015-07-01/generated/azure_mgmt_authorization/models/classic_administrator_list_result.rb'
    autoload :Permission,                                         '2015-07-01/generated/azure_mgmt_authorization/models/permission.rb'
  end
end
