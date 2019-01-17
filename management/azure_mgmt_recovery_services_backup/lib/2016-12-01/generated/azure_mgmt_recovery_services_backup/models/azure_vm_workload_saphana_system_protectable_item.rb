# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Azure VM workload-specific protectable item representing SAP HANA System.
    #
    class AzureVmWorkloadSAPHanaSystemProtectableItem < AzureVmWorkloadProtectableItem

      include MsRestAzure


      def initialize
        @protectableItemType = "SAPHanaSystem"
      end

      attr_accessor :protectableItemType


      #
      # Mapper for AzureVmWorkloadSAPHanaSystemProtectableItem class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SAPHanaSystem',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadSAPHanaSystemProtectableItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              protectableItemType: {
                required: true,
                serialized_name: 'protectableItemType',
                type: {
                  name: 'String'
                }
              },
              parent_name: {
                required: false,
                serialized_name: 'parentName',
                type: {
                  name: 'String'
                }
              },
              parent_unique_name: {
                required: false,
                serialized_name: 'parentUniqueName',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              is_auto_protectable: {
                required: false,
                serialized_name: 'isAutoProtectable',
                type: {
                  name: 'Boolean'
                }
              },
              is_auto_protected: {
                required: false,
                serialized_name: 'isAutoProtected',
                type: {
                  name: 'Boolean'
                }
              },
              subinquireditemcount: {
                required: false,
                serialized_name: 'subinquireditemcount',
                type: {
                  name: 'Number'
                }
              },
              subprotectableitemcount: {
                required: false,
                serialized_name: 'subprotectableitemcount',
                type: {
                  name: 'Number'
                }
              },
              prebackupvalidation: {
                required: false,
                serialized_name: 'prebackupvalidation',
                type: {
                  name: 'Composite',
                  class_name: 'PreBackupValidation'
                }
              }
            }
          }
        }
      end
    end
  end
end
