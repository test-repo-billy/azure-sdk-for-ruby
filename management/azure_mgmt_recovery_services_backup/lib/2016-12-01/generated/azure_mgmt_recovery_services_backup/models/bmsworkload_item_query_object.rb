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
    # Filters to list items that can be backed up.
    #
    class BMSWorkloadItemQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type. Possible values
      # include: 'Invalid', 'AzureIaasVM', 'MAB', 'DPM', 'AzureBackupServer',
      # 'AzureSql', 'AzureStorage', 'AzureWorkload', 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [WorkloadItemType] Workload Item type. Possible values include:
      # 'Invalid', 'SQLInstance', 'SQLDataBase', 'SAPHanaSystem',
      # 'SAPHanaDatabase', 'SAPAseSystem', 'SAPAseDatabase'
      attr_accessor :workload_item_type

      # @return [WorkloadType] Workload type. Possible values include:
      # 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb', 'SQLDB', 'Exchange',
      # 'Sharepoint', 'VMwareVM', 'SystemState', 'Client', 'GenericDataSource',
      # 'SQLDataBase', 'AzureFileShare', 'SAPHanaDatabase', 'SAPAseDatabase'
      attr_accessor :workload_type

      # @return [ProtectionStatus] Backup status query parameter. Possible
      # values include: 'Invalid', 'NotProtected', 'Protecting', 'Protected',
      # 'ProtectionFailed'
      attr_accessor :protection_status


      #
      # Mapper for BMSWorkloadItemQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSWorkloadItemQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSWorkloadItemQueryObject',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_item_type: {
                required: false,
                serialized_name: 'workloadItemType',
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
              protection_status: {
                required: false,
                serialized_name: 'protectionStatus',
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
