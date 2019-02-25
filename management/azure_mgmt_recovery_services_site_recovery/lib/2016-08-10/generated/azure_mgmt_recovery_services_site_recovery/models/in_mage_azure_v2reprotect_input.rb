# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # InMageAzureV2 specific provider input.
    #
    class InMageAzureV2ReprotectInput < ReverseReplicationProviderSpecificInput

      include MsRestAzure


      def initialize
        @instanceType = "InMageAzureV2"
      end

      attr_accessor :instanceType

      # @return [String] The Master target Id.
      attr_accessor :master_target_id

      # @return [String] The Process Server Id.
      attr_accessor :process_server_id

      # @return [String] The storage account id.
      attr_accessor :storage_account_id

      # @return [String] The CS account Id.
      attr_accessor :run_as_account_id

      # @return [String] The Policy Id.
      attr_accessor :policy_id

      # @return [String] The storage account to be used for logging during
      # replication.
      attr_accessor :log_storage_account_id

      # @return [Array<String>] The disks to include list.
      attr_accessor :disks_to_include


      #
      # Mapper for InMageAzureV2ReprotectInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InMageAzureV2',
          type: {
            name: 'Composite',
            class_name: 'InMageAzureV2ReprotectInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              master_target_id: {
                required: false,
                serialized_name: 'masterTargetId',
                type: {
                  name: 'String'
                }
              },
              process_server_id: {
                required: false,
                serialized_name: 'processServerId',
                type: {
                  name: 'String'
                }
              },
              storage_account_id: {
                required: false,
                serialized_name: 'storageAccountId',
                type: {
                  name: 'String'
                }
              },
              run_as_account_id: {
                required: false,
                serialized_name: 'runAsAccountId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              log_storage_account_id: {
                required: false,
                serialized_name: 'logStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              disks_to_include: {
                required: false,
                serialized_name: 'disksToInclude',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
