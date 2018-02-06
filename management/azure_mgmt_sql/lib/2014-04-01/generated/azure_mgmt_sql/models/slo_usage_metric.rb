# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A Slo Usage Metric.
    #
    class SloUsageMetric

      include MsRestAzure

      # @return [ServiceObjectiveName] The serviceLevelObjective for SLO usage
      # metric. Possible values include: 'Basic', 'S0', 'S1', 'S2', 'S3', 'P1',
      # 'P2', 'P3', 'P4', 'P6', 'P11', 'P15', 'System', 'System2',
      # 'ElasticPool'
      attr_accessor :service_level_objective

      # @return The serviceLevelObjectiveId for SLO usage metric.
      attr_accessor :service_level_objective_id

      # @return [Float] Gets or sets inRangeTimeRatio for SLO usage metric.
      attr_accessor :in_range_time_ratio


      #
      # Mapper for SloUsageMetric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SloUsageMetric',
          type: {
            name: 'Composite',
            class_name: 'SloUsageMetric',
            model_properties: {
              service_level_objective: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              service_level_objective_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceLevelObjectiveId',
                type: {
                  name: 'String'
                }
              },
              in_range_time_ratio: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'inRangeTimeRatio',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end