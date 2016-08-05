# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
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
require 'generated/azure_mgmt_locks/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Locks
  autoload :ManagementLocks,                                    'generated/azure_mgmt_locks/management_locks.rb'
  autoload :ManagementLockClient,                               'generated/azure_mgmt_locks/management_lock_client.rb'

  module Models
    autoload :DeploymentExtendedFilter,                           'generated/azure_mgmt_locks/models/deployment_extended_filter.rb'
    autoload :GenericResourceFilter,                              'generated/azure_mgmt_locks/models/generic_resource_filter.rb'
    autoload :ResourceGroupFilter,                                'generated/azure_mgmt_locks/models/resource_group_filter.rb'
    autoload :ManagementLockObject,                               'generated/azure_mgmt_locks/models/management_lock_object.rb'
    autoload :ManagementLockListResult,                           'generated/azure_mgmt_locks/models/management_lock_list_result.rb'
    autoload :LockLevel,                                          'generated/azure_mgmt_locks/models/lock_level.rb'
  end
end
