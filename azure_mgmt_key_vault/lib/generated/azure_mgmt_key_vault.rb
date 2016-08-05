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
require 'generated/azure_mgmt_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::ARM::KeyVault
  autoload :Vaults,                                             'generated/azure_mgmt_key_vault/vaults.rb'
  autoload :KeyVaultManagementClient,                           'generated/azure_mgmt_key_vault/key_vault_management_client.rb'

  module Models
    autoload :Sku,                                                'generated/azure_mgmt_key_vault/models/sku.rb'
    autoload :AccessPolicyEntry,                                  'generated/azure_mgmt_key_vault/models/access_policy_entry.rb'
    autoload :Permissions,                                        'generated/azure_mgmt_key_vault/models/permissions.rb'
    autoload :VaultProperties,                                    'generated/azure_mgmt_key_vault/models/vault_properties.rb'
    autoload :VaultCreateOrUpdateParameters,                      'generated/azure_mgmt_key_vault/models/vault_create_or_update_parameters.rb'
    autoload :VaultListResult,                                    'generated/azure_mgmt_key_vault/models/vault_list_result.rb'
    autoload :Vault,                                              'generated/azure_mgmt_key_vault/models/vault.rb'
    autoload :SkuFamily,                                          'generated/azure_mgmt_key_vault/models/sku_family.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_key_vault/models/sku_name.rb'
  end
end
