# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # The metric alert resource.
    #
    class MetricAlertResource < Resource

      include MsRestAzure

      # @return [String] the description of the metric alert that will be
      # included in the alert email.
      attr_accessor :description

      # @return [Integer] Alert severity {0, 1, 2, 3, 4}
      attr_accessor :severity

      # @return [Boolean] the flag that indicates whether the metric alert is
      # enabled.
      attr_accessor :enabled

      # @return [Array<String>] the list of resource id's that this metric
      # alert is scoped to.
      attr_accessor :scopes

      # @return [Duration] how often the metric alert is evaluated represented
      # in ISO 8601 duration format.
      attr_accessor :evaluation_frequency

      # @return [Duration] the period of time (in ISO 8601 duration format)
      # that is used to monitor alert activity based on the threshold.
      attr_accessor :window_size

      # @return [MetricAlertCriteria] defines the specific alert criteria
      # information.
      attr_accessor :criteria

      # @return [Boolean] the flag that indicates whether the alert should be
      # auto resolved or not.
      attr_accessor :auto_mitigate

      # @return [Array<MetricAlertAction>] the array of actions that are
      # performed when the alert rule becomes active, and when an alert
      # condition is resolved.
      attr_accessor :actions

      # @return [DateTime] Last time the rule was updated in ISO8601 format.
      attr_accessor :last_updated_time


      #
      # Mapper for MetricAlertResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricAlertResource',
          type: {
            name: 'Composite',
            class_name: 'MetricAlertResource',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
              description: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.severity',
                type: {
                  name: 'Number'
                }
              },
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              scopes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scopes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              evaluation_frequency: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.evaluationFrequency',
                type: {
                  name: 'TimeSpan'
                }
              },
              window_size: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.windowSize',
                type: {
                  name: 'TimeSpan'
                }
              },
              criteria: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.criteria',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'odata.type',
                  uber_parent: 'MetricAlertCriteria',
                  class_name: 'MetricAlertCriteria'
                }
              },
              auto_mitigate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoMitigate',
                type: {
                  name: 'Boolean'
                }
              },
              actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.actions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricAlertActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricAlertAction'
                      }
                  }
                }
              },
              last_updated_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastUpdatedTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
