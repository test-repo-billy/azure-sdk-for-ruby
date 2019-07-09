# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  module Models
    #
    # Summary of alerts by monitor condition with severity 'Sev3'
    #
    class AlertsSummaryBySeverityAndMonitorConditionSev3 < AlertsSummaryByMonitorCondition

      include MsRestAzure


      #
      # Mapper for AlertsSummaryBySeverityAndMonitorConditionSev3 class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertsSummaryBySeverityAndMonitorCondition_sev3',
          type: {
            name: 'Composite',
            class_name: 'AlertsSummaryBySeverityAndMonitorConditionSev3',
            model_properties: {
              fired: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fired',
                type: {
                  name: 'Number'
                }
              },
              resolved: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resolved',
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
