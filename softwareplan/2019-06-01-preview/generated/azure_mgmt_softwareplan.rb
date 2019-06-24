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
require '2019-06-01-preview/generated/azure_mgmt_softwareplan/module_definition'
require 'ms_rest_azure'

module Microsoft.SoftwarePlan
  autoload :SoftwarePlan,                                       '2019-06-01-preview/generated/azure_mgmt_softwareplan/software_plan.rb'
  autoload :HybridUseBenefit,                                   '2019-06-01-preview/generated/azure_mgmt_softwareplan/hybrid_use_benefit.rb'
  autoload :HybridUseBenefitRevision,                           '2019-06-01-preview/generated/azure_mgmt_softwareplan/hybrid_use_benefit_revision.rb'
  autoload :Operations,                                         '2019-06-01-preview/generated/azure_mgmt_softwareplan/operations.rb'
  autoload :softwareplanClient,                                 '2019-06-01-preview/generated/azure_mgmt_softwareplan/softwareplan_client.rb'

  module Models
    autoload :OperationResponse,                                  '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/operation_response.rb'
    autoload :OperationList,                                      '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/operation_list.rb'
    autoload :Sku,                                                '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/sku.rb'
    autoload :Error,                                              '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/error.rb'
    autoload :HybridUseBenefitListResult,                         '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/hybrid_use_benefit_list_result.rb'
    autoload :Resource,                                           '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/resource.rb'
    autoload :OperationDisplay,                                   '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/operation_display.rb'
    autoload :HybridUseBenefitModel,                              '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/hybrid_use_benefit_model.rb'
    autoload :ProxyResource,                                      '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/proxy_resource.rb'
    autoload :TrackedResource,                                    '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/azure_entity_resource.rb'
    autoload :ErrorCode,                                          '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/error_code.rb'
    autoload :ProvisioningState,                                  '2019-06-01-preview/generated/azure_mgmt_softwareplan/models/provisioning_state.rb'
  end
end