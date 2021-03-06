# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_04_01
  module Models
    #
    # The parameters used when creating a storage account.
    #
    class StorageAccountCreateParameters

      include MsRestAzure

      # @return [Sku] Required. Gets or sets the SKU name.
      attr_accessor :sku

      # @return [Kind] Required. Indicates the type of storage account.
      # Possible values include: 'Storage', 'StorageV2', 'BlobStorage',
      # 'FileStorage', 'BlockBlobStorage'
      attr_accessor :kind

      # @return [String] Required. Gets or sets the location of the resource.
      # This will be one of the supported and registered Azure Geo Regions
      # (e.g. West US, East US, Southeast Asia, etc.). The geo region of a
      # resource cannot be changed once it is created, but if an identical geo
      # region is specified on update, the request will succeed.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets a list of key value pairs
      # that describe the resource. These tags can be used for viewing and
      # grouping this resource (across resource groups). A maximum of 15 tags
      # can be provided for a resource. Each tag must have a key with a length
      # no greater than 128 characters and a value with a length no greater
      # than 256 characters.
      attr_accessor :tags

      # @return [Identity] The identity of the resource.
      attr_accessor :identity

      # @return [CustomDomain] User domain assigned to the storage account.
      # Name is the CNAME source. Only one custom domain is supported per
      # storage account at this time. To clear the existing custom domain, use
      # an empty string for the custom domain name property.
      attr_accessor :custom_domain

      # @return [Encryption] Not applicable. Azure Storage encryption is
      # enabled for all storage accounts and cannot be disabled.
      attr_accessor :encryption

      # @return [NetworkRuleSet] Network rule set
      attr_accessor :network_rule_set

      # @return [AccessTier] Required for storage accounts where kind =
      # BlobStorage. The access tier used for billing. Possible values include:
      # 'Hot', 'Cool'
      attr_accessor :access_tier

      # @return [AzureFilesIdentityBasedAuthentication] Provides the identity
      # based authentication settings for Azure Files.
      attr_accessor :azure_files_identity_based_authentication

      # @return [Boolean] Allows https traffic only to storage service if sets
      # to true. The default value is true since API version 2019-04-01.
      attr_accessor :enable_https_traffic_only

      # @return [Boolean] Account HierarchicalNamespace enabled if sets to
      # true.
      attr_accessor :is_hns_enabled


      #
      # Mapper for StorageAccountCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCreateParameters',
            model_properties: {
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              custom_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customDomain',
                type: {
                  name: 'Composite',
                  class_name: 'CustomDomain'
                }
              },
              encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'Encryption'
                }
              },
              network_rule_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkAcls',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkRuleSet'
                }
              },
              access_tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accessTier',
                type: {
                  name: 'Enum',
                  module: 'AccessTier'
                }
              },
              azure_files_identity_based_authentication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureFilesIdentityBasedAuthentication',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFilesIdentityBasedAuthentication'
                }
              },
              enable_https_traffic_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportsHttpsTrafficOnly',
                type: {
                  name: 'Boolean'
                }
              },
              is_hns_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHnsEnabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
