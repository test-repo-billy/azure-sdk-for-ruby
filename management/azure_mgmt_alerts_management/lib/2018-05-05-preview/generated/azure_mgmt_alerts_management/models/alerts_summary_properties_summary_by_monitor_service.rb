# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  module Models
    #
    # Summary of alerts by severity
    #
    class AlertsSummaryPropertiesSummaryByMonitorService < AlertsSummaryByMonitorService

      include MsRestAzure


      #
      # Mapper for AlertsSummaryPropertiesSummaryByMonitorService class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertsSummaryProperties_summaryByMonitorService',
          type: {
            name: 'Composite',
            class_name: 'AlertsSummaryPropertiesSummaryByMonitorService',
            model_properties: {
              platform: {
                client_side_validation: true,
                required: false,
                serialized_name: 'platform',
                type: {
                  name: 'Number'
                }
              },
              application_insights: {
                client_side_validation: true,
                required: false,
                serialized_name: 'application Insights',
                type: {
                  name: 'Number'
                }
              },
              log_analytics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'log Analytics',
                type: {
                  name: 'Number'
                }
              },
              zabbix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zabbix',
                type: {
                  name: 'Number'
                }
              },
              scom: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scom',
                type: {
                  name: 'Number'
                }
              },
              nagios: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nagios',
                type: {
                  name: 'Number'
                }
              },
              infrastructure_insights: {
                client_side_validation: true,
                required: false,
                serialized_name: 'infrastructure Insights',
                type: {
                  name: 'Number'
                }
              },
              activity_log_administrative: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Administrative',
                type: {
                  name: 'Number'
                }
              },
              activity_log_security: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Security',
                type: {
                  name: 'Number'
                }
              },
              activity_log_recommendation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Recommendation',
                type: {
                  name: 'Number'
                }
              },
              activity_log_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Policy',
                type: {
                  name: 'Number'
                }
              },
              activity_log_autoscale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityLog Autoscale',
                type: {
                  name: 'Number'
                }
              },
              service_health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceHealth',
                type: {
                  name: 'Number'
                }
              },
              smart_detector: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smartDetector',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
