# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  module Models
    #
    # An alert created in alert management service.
    #
    class Alert < Resource

      include MsRestAzure

      # @return [Severity] Severity of alert Sev1 being highest and Sev3 being
      # lowest. Possible values include: 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
      attr_accessor :severity

      # @return [SignalType] Log based alert or metric based alert. Possible
      # values include: 'Metric', 'Log', 'Unknown'
      attr_accessor :signal_type

      # @return [AlertState] Alert object state. Possible values include:
      # 'New', 'Acknowledged', 'Closed'
      attr_accessor :alert_state

      # @return [MonitorCondition] Condition of the rule at the monitor
      # service. Possible values include: 'Fired', 'Resolved'
      attr_accessor :monitor_condition

      # @return [String] Target ARM resource, on which alert got created.
      attr_accessor :target_resource

      # @return [String] Target ARM resource name, on which alert got created.
      attr_accessor :target_resource_name

      # @return [String] Resource group of target ARM resource.
      attr_accessor :target_resource_group

      # @return [String] Resource type of target ARM resource
      attr_accessor :target_resource_type

      # @return [MonitorService] Monitor service which is the source of the
      # alert object. Possible values include: 'Platform', 'Application
      # Insights', 'Log Analytics', 'Infrastructure Insights', 'ActivityLog
      # Administrative', 'ActivityLog Security', 'ActivityLog Recommendation',
      # 'ActivityLog Policy', 'ActivityLog Autoscale', 'ServiceHealth',
      # 'SmartDetector', 'Zabbix', 'SCOM', 'Nagios'
      attr_accessor :monitor_service

      # @return [String] Unique Id created by monitor service
      attr_accessor :source_created_id

      # @return [String] Unique Id of the smart group
      attr_accessor :smart_group_id

      # @return [String] Reason for addition to a smart group
      attr_accessor :smart_grouping_reason

      # @return [DateTime] Creation time(ISO-8601 format).
      attr_accessor :start_date_time

      # @return [DateTime] Last modification time(ISO-8601 format).
      attr_accessor :last_modified_date_time

      # @return [String] User who last modified the alert.
      attr_accessor :last_modified_user_name

      # @return More details which are contextual to the monitor service.
      attr_accessor :payload


      #
      # Mapper for Alert class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alert',
          type: {
            name: 'Composite',
            class_name: 'Alert',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.severity',
                type: {
                  name: 'String'
                }
              },
              signal_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.signalType',
                type: {
                  name: 'String'
                }
              },
              alert_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.alertState',
                type: {
                  name: 'String'
                }
              },
              monitor_condition: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.monitorCondition',
                type: {
                  name: 'String'
                }
              },
              target_resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetResource',
                type: {
                  name: 'String'
                }
              },
              target_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetResourceName',
                type: {
                  name: 'String'
                }
              },
              target_resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetResourceGroup',
                type: {
                  name: 'String'
                }
              },
              target_resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetResourceType',
                type: {
                  name: 'String'
                }
              },
              monitor_service: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.monitorService',
                type: {
                  name: 'String'
                }
              },
              source_created_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sourceCreatedId',
                type: {
                  name: 'String'
                }
              },
              smart_group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.smartGroupId',
                type: {
                  name: 'String'
                }
              },
              smart_grouping_reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.smartGroupingReason',
                type: {
                  name: 'String'
                }
              },
              start_date_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_date_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedUserName',
                type: {
                  name: 'String'
                }
              },
              payload: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.payload',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
