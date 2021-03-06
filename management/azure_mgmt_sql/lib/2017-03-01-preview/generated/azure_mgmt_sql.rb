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
require '2017-03-01-preview/generated/azure_mgmt_sql/module_definition'
require 'ms_rest_azure'

module Azure::SQL::Mgmt::V2017_03_01_preview
  autoload :ExtendedDatabaseBlobAuditingPolicies,               '2017-03-01-preview/generated/azure_mgmt_sql/extended_database_blob_auditing_policies.rb'
  autoload :ExtendedServerBlobAuditingPolicies,                 '2017-03-01-preview/generated/azure_mgmt_sql/extended_server_blob_auditing_policies.rb'
  autoload :ServerBlobAuditingPolicies,                         '2017-03-01-preview/generated/azure_mgmt_sql/server_blob_auditing_policies.rb'
  autoload :DatabaseBlobAuditingPolicies,                       '2017-03-01-preview/generated/azure_mgmt_sql/database_blob_auditing_policies.rb'
  autoload :DatabaseOperations,                                 '2017-03-01-preview/generated/azure_mgmt_sql/database_operations.rb'
  autoload :Databases,                                          '2017-03-01-preview/generated/azure_mgmt_sql/databases.rb'
  autoload :DatabaseVulnerabilityAssessmentRuleBaselines,       '2017-03-01-preview/generated/azure_mgmt_sql/database_vulnerability_assessment_rule_baselines.rb'
  autoload :DatabaseVulnerabilityAssessments,                   '2017-03-01-preview/generated/azure_mgmt_sql/database_vulnerability_assessments.rb'
  autoload :DataWarehouseUserActivitiesOperations,              '2017-03-01-preview/generated/azure_mgmt_sql/data_warehouse_user_activities_operations.rb'
  autoload :JobAgents,                                          '2017-03-01-preview/generated/azure_mgmt_sql/job_agents.rb'
  autoload :JobCredentials,                                     '2017-03-01-preview/generated/azure_mgmt_sql/job_credentials.rb'
  autoload :JobExecutions,                                      '2017-03-01-preview/generated/azure_mgmt_sql/job_executions.rb'
  autoload :Jobs,                                               '2017-03-01-preview/generated/azure_mgmt_sql/jobs.rb'
  autoload :JobStepExecutions,                                  '2017-03-01-preview/generated/azure_mgmt_sql/job_step_executions.rb'
  autoload :JobSteps,                                           '2017-03-01-preview/generated/azure_mgmt_sql/job_steps.rb'
  autoload :JobTargetExecutions,                                '2017-03-01-preview/generated/azure_mgmt_sql/job_target_executions.rb'
  autoload :JobTargetGroups,                                    '2017-03-01-preview/generated/azure_mgmt_sql/job_target_groups.rb'
  autoload :JobVersions,                                        '2017-03-01-preview/generated/azure_mgmt_sql/job_versions.rb'
  autoload :LongTermRetentionBackups,                           '2017-03-01-preview/generated/azure_mgmt_sql/long_term_retention_backups.rb'
  autoload :BackupLongTermRetentionPolicies,                    '2017-03-01-preview/generated/azure_mgmt_sql/backup_long_term_retention_policies.rb'
  autoload :ManagedBackupShortTermRetentionPolicies,            '2017-03-01-preview/generated/azure_mgmt_sql/managed_backup_short_term_retention_policies.rb'
  autoload :ManagedDatabases,                                   '2017-03-01-preview/generated/azure_mgmt_sql/managed_databases.rb'
  autoload :ManagedRestorableDroppedDatabaseBackupShortTermRetentionPolicies, '2017-03-01-preview/generated/azure_mgmt_sql/managed_restorable_dropped_database_backup_short_term_retention_policies.rb'
  autoload :RestorableDroppedManagedDatabases,                  '2017-03-01-preview/generated/azure_mgmt_sql/restorable_dropped_managed_databases.rb'
  autoload :RestorePoints,                                      '2017-03-01-preview/generated/azure_mgmt_sql/restore_points.rb'
  autoload :ServerAutomaticTuningOperations,                    '2017-03-01-preview/generated/azure_mgmt_sql/server_automatic_tuning_operations.rb'
  autoload :ServerDnsAliases,                                   '2017-03-01-preview/generated/azure_mgmt_sql/server_dns_aliases.rb'
  autoload :ServerSecurityAlertPolicies,                        '2017-03-01-preview/generated/azure_mgmt_sql/server_security_alert_policies.rb'
  autoload :ManagedDatabaseSecurityAlertPolicies,               '2017-03-01-preview/generated/azure_mgmt_sql/managed_database_security_alert_policies.rb'
  autoload :ManagedServerSecurityAlertPolicies,                 '2017-03-01-preview/generated/azure_mgmt_sql/managed_server_security_alert_policies.rb'
  autoload :SensitivityLabels,                                  '2017-03-01-preview/generated/azure_mgmt_sql/sensitivity_labels.rb'
  autoload :ManagedInstanceAdministrators,                      '2017-03-01-preview/generated/azure_mgmt_sql/managed_instance_administrators.rb'
  autoload :SqlManagementClient,                                '2017-03-01-preview/generated/azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :JobStepListResult,                                  '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_list_result.rb'
    autoload :RestorePointListResult,                             '2017-03-01-preview/generated/azure_mgmt_sql/models/restore_point_list_result.rb'
    autoload :JobAgentListResult,                                 '2017-03-01-preview/generated/azure_mgmt_sql/models/job_agent_list_result.rb'
    autoload :SensitivityLabelListResult,                         '2017-03-01-preview/generated/azure_mgmt_sql/models/sensitivity_label_list_result.rb'
    autoload :JobAgentUpdate,                                     '2017-03-01-preview/generated/azure_mgmt_sql/models/job_agent_update.rb'
    autoload :Resource,                                           '2017-03-01-preview/generated/azure_mgmt_sql/models/resource.rb'
    autoload :RestorableDroppedManagedDatabaseListResult,         '2017-03-01-preview/generated/azure_mgmt_sql/models/restorable_dropped_managed_database_list_result.rb'
    autoload :ManagedDatabaseSecurityAlertPolicyListResult,       '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database_security_alert_policy_list_result.rb'
    autoload :JobCredentialListResult,                            '2017-03-01-preview/generated/azure_mgmt_sql/models/job_credential_list_result.rb'
    autoload :Sku,                                                '2017-03-01-preview/generated/azure_mgmt_sql/models/sku.rb'
    autoload :JobExecutionTarget,                                 '2017-03-01-preview/generated/azure_mgmt_sql/models/job_execution_target.rb'
    autoload :DatabaseListResult,                                 '2017-03-01-preview/generated/azure_mgmt_sql/models/database_list_result.rb'
    autoload :ResourceMoveDefinition,                             '2017-03-01-preview/generated/azure_mgmt_sql/models/resource_move_definition.rb'
    autoload :ImportExportDatabaseDefinition,                     '2017-03-01-preview/generated/azure_mgmt_sql/models/import_export_database_definition.rb'
    autoload :JobExecutionListResult,                             '2017-03-01-preview/generated/azure_mgmt_sql/models/job_execution_list_result.rb'
    autoload :DatabaseVulnerabilityAssessmentRuleBaselineItem,    '2017-03-01-preview/generated/azure_mgmt_sql/models/database_vulnerability_assessment_rule_baseline_item.rb'
    autoload :JobSchedule,                                        '2017-03-01-preview/generated/azure_mgmt_sql/models/job_schedule.rb'
    autoload :VulnerabilityAssessmentRecurringScansProperties,    '2017-03-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_recurring_scans_properties.rb'
    autoload :ManagedDatabaseUpdate,                              '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database_update.rb'
    autoload :DatabaseVulnerabilityAssessmentListResult,          '2017-03-01-preview/generated/azure_mgmt_sql/models/database_vulnerability_assessment_list_result.rb'
    autoload :JobListResult,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/job_list_result.rb'
    autoload :ManagedInstanceAdministratorListResult,             '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_instance_administrator_list_result.rb'
    autoload :JobStepAction,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_action.rb'
    autoload :JobVersionListResult,                               '2017-03-01-preview/generated/azure_mgmt_sql/models/job_version_list_result.rb'
    autoload :DatabaseOperationListResult,                        '2017-03-01-preview/generated/azure_mgmt_sql/models/database_operation_list_result.rb'
    autoload :JobStepOutput,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_output.rb'
    autoload :DatabaseUpdate,                                     '2017-03-01-preview/generated/azure_mgmt_sql/models/database_update.rb'
    autoload :JobStepExecutionOptions,                            '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_execution_options.rb'
    autoload :ServerDnsAliasListResult,                           '2017-03-01-preview/generated/azure_mgmt_sql/models/server_dns_alias_list_result.rb'
    autoload :ManagedDatabaseListResult,                          '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database_list_result.rb'
    autoload :CreateDatabaseRestorePointDefinition,               '2017-03-01-preview/generated/azure_mgmt_sql/models/create_database_restore_point_definition.rb'
    autoload :CompleteDatabaseRestoreDefinition,                  '2017-03-01-preview/generated/azure_mgmt_sql/models/complete_database_restore_definition.rb'
    autoload :LogicalServerSecurityAlertPolicyListResult,         '2017-03-01-preview/generated/azure_mgmt_sql/models/logical_server_security_alert_policy_list_result.rb'
    autoload :JobTarget,                                          '2017-03-01-preview/generated/azure_mgmt_sql/models/job_target.rb'
    autoload :AutomaticTuningServerOptions,                       '2017-03-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_server_options.rb'
    autoload :ManagedBackupShortTermRetentionPolicyListResult,    '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_backup_short_term_retention_policy_list_result.rb'
    autoload :ServerDnsAliasAcquisition,                          '2017-03-01-preview/generated/azure_mgmt_sql/models/server_dns_alias_acquisition.rb'
    autoload :JobTargetGroupListResult,                           '2017-03-01-preview/generated/azure_mgmt_sql/models/job_target_group_list_result.rb'
    autoload :ManagedServerSecurityAlertPolicyListResult,         '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_server_security_alert_policy_list_result.rb'
    autoload :LongTermRetentionBackupListResult,                  '2017-03-01-preview/generated/azure_mgmt_sql/models/long_term_retention_backup_list_result.rb'
    autoload :ProxyResource,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/proxy_resource.rb'
    autoload :ExtendedDatabaseBlobAuditingPolicy,                 '2017-03-01-preview/generated/azure_mgmt_sql/models/extended_database_blob_auditing_policy.rb'
    autoload :ExtendedServerBlobAuditingPolicy,                   '2017-03-01-preview/generated/azure_mgmt_sql/models/extended_server_blob_auditing_policy.rb'
    autoload :ServerBlobAuditingPolicy,                           '2017-03-01-preview/generated/azure_mgmt_sql/models/server_blob_auditing_policy.rb'
    autoload :DatabaseBlobAuditingPolicy,                         '2017-03-01-preview/generated/azure_mgmt_sql/models/database_blob_auditing_policy.rb'
    autoload :TrackedResource,                                    '2017-03-01-preview/generated/azure_mgmt_sql/models/tracked_resource.rb'
    autoload :DatabaseOperation,                                  '2017-03-01-preview/generated/azure_mgmt_sql/models/database_operation.rb'
    autoload :Database,                                           '2017-03-01-preview/generated/azure_mgmt_sql/models/database.rb'
    autoload :ImportExportOperationResult,                        '2017-03-01-preview/generated/azure_mgmt_sql/models/import_export_operation_result.rb'
    autoload :DatabaseVulnerabilityAssessmentRuleBaseline,        '2017-03-01-preview/generated/azure_mgmt_sql/models/database_vulnerability_assessment_rule_baseline.rb'
    autoload :DatabaseVulnerabilityAssessment,                    '2017-03-01-preview/generated/azure_mgmt_sql/models/database_vulnerability_assessment.rb'
    autoload :DataWarehouseUserActivities,                        '2017-03-01-preview/generated/azure_mgmt_sql/models/data_warehouse_user_activities.rb'
    autoload :JobAgent,                                           '2017-03-01-preview/generated/azure_mgmt_sql/models/job_agent.rb'
    autoload :JobCredential,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/job_credential.rb'
    autoload :JobExecution,                                       '2017-03-01-preview/generated/azure_mgmt_sql/models/job_execution.rb'
    autoload :Job,                                                '2017-03-01-preview/generated/azure_mgmt_sql/models/job.rb'
    autoload :JobStep,                                            '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step.rb'
    autoload :JobTargetGroup,                                     '2017-03-01-preview/generated/azure_mgmt_sql/models/job_target_group.rb'
    autoload :JobVersion,                                         '2017-03-01-preview/generated/azure_mgmt_sql/models/job_version.rb'
    autoload :LongTermRetentionBackup,                            '2017-03-01-preview/generated/azure_mgmt_sql/models/long_term_retention_backup.rb'
    autoload :BackupLongTermRetentionPolicy,                      '2017-03-01-preview/generated/azure_mgmt_sql/models/backup_long_term_retention_policy.rb'
    autoload :ManagedBackupShortTermRetentionPolicy,              '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_backup_short_term_retention_policy.rb'
    autoload :ManagedDatabase,                                    '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database.rb'
    autoload :RestorableDroppedManagedDatabase,                   '2017-03-01-preview/generated/azure_mgmt_sql/models/restorable_dropped_managed_database.rb'
    autoload :RestorePoint,                                       '2017-03-01-preview/generated/azure_mgmt_sql/models/restore_point.rb'
    autoload :ServerAutomaticTuning,                              '2017-03-01-preview/generated/azure_mgmt_sql/models/server_automatic_tuning.rb'
    autoload :ServerDnsAlias,                                     '2017-03-01-preview/generated/azure_mgmt_sql/models/server_dns_alias.rb'
    autoload :ServerSecurityAlertPolicy,                          '2017-03-01-preview/generated/azure_mgmt_sql/models/server_security_alert_policy.rb'
    autoload :ManagedDatabaseSecurityAlertPolicy,                 '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database_security_alert_policy.rb'
    autoload :ManagedServerSecurityAlertPolicy,                   '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_server_security_alert_policy.rb'
    autoload :SensitivityLabel,                                   '2017-03-01-preview/generated/azure_mgmt_sql/models/sensitivity_label.rb'
    autoload :ManagedInstanceAdministrator,                       '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_instance_administrator.rb'
    autoload :BlobAuditingPolicyState,                            '2017-03-01-preview/generated/azure_mgmt_sql/models/blob_auditing_policy_state.rb'
    autoload :ManagementOperationState,                           '2017-03-01-preview/generated/azure_mgmt_sql/models/management_operation_state.rb'
    autoload :CreateMode,                                         '2017-03-01-preview/generated/azure_mgmt_sql/models/create_mode.rb'
    autoload :SampleName,                                         '2017-03-01-preview/generated/azure_mgmt_sql/models/sample_name.rb'
    autoload :DatabaseStatus,                                     '2017-03-01-preview/generated/azure_mgmt_sql/models/database_status.rb'
    autoload :CatalogCollationType,                               '2017-03-01-preview/generated/azure_mgmt_sql/models/catalog_collation_type.rb'
    autoload :JobAgentState,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/job_agent_state.rb'
    autoload :JobExecutionLifecycle,                              '2017-03-01-preview/generated/azure_mgmt_sql/models/job_execution_lifecycle.rb'
    autoload :ProvisioningState,                                  '2017-03-01-preview/generated/azure_mgmt_sql/models/provisioning_state.rb'
    autoload :JobTargetType,                                      '2017-03-01-preview/generated/azure_mgmt_sql/models/job_target_type.rb'
    autoload :JobScheduleType,                                    '2017-03-01-preview/generated/azure_mgmt_sql/models/job_schedule_type.rb'
    autoload :JobStepActionType,                                  '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_action_type.rb'
    autoload :JobStepActionSource,                                '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_action_source.rb'
    autoload :JobStepOutputType,                                  '2017-03-01-preview/generated/azure_mgmt_sql/models/job_step_output_type.rb'
    autoload :JobTargetGroupMembershipType,                       '2017-03-01-preview/generated/azure_mgmt_sql/models/job_target_group_membership_type.rb'
    autoload :ManagedDatabaseStatus,                              '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database_status.rb'
    autoload :ManagedDatabaseCreateMode,                          '2017-03-01-preview/generated/azure_mgmt_sql/models/managed_database_create_mode.rb'
    autoload :RestorePointType,                                   '2017-03-01-preview/generated/azure_mgmt_sql/models/restore_point_type.rb'
    autoload :AutomaticTuningServerMode,                          '2017-03-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_server_mode.rb'
    autoload :AutomaticTuningOptionModeDesired,                   '2017-03-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_option_mode_desired.rb'
    autoload :AutomaticTuningOptionModeActual,                    '2017-03-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_option_mode_actual.rb'
    autoload :AutomaticTuningServerReason,                        '2017-03-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_server_reason.rb'
    autoload :SecurityAlertPolicyState,                           '2017-03-01-preview/generated/azure_mgmt_sql/models/security_alert_policy_state.rb'
    autoload :LongTermRetentionDatabaseState,                     '2017-03-01-preview/generated/azure_mgmt_sql/models/long_term_retention_database_state.rb'
    autoload :VulnerabilityAssessmentPolicyBaselineName,          '2017-03-01-preview/generated/azure_mgmt_sql/models/vulnerability_assessment_policy_baseline_name.rb'
    autoload :SensitivityLabelSource,                             '2017-03-01-preview/generated/azure_mgmt_sql/models/sensitivity_label_source.rb'
  end
end
