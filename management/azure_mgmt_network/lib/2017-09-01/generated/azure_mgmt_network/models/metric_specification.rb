# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_09_01
  module Models
    #
    # Description of metrics specification.
    #
    class MetricSpecification

      include MsRestAzure

      # @return [String] The name of the metric.
      attr_accessor :name

      # @return [String] The display name of the metric.
      attr_accessor :display_name

      # @return [String] The description of the metric.
      attr_accessor :display_description

      # @return [String] Units the metric to be displayed in.
      attr_accessor :unit

      # @return [String] The aggregation type.
      attr_accessor :aggregation_type

      # @return [Array<Availability>] List of availability.
      attr_accessor :availabilities

      # @return [Boolean] Whether regional MDM account enabled.
      attr_accessor :enable_regional_mdm_account

      # @return [Boolean] Whether gaps would be filled with zeros.
      attr_accessor :fill_gap_with_zero

      # @return [String] Pattern for the filter of the metric.
      attr_accessor :metric_filter_pattern

      # @return [Array<Dimension>] List of dimensions.
      attr_accessor :dimensions

      # @return [Boolean] Whether the metric is internal.
      attr_accessor :is_internal

      # @return [String] The source MDM account.
      attr_accessor :source_mdm_account

      # @return [String] The source MDM namespace.
      attr_accessor :source_mdm_namespace

      # @return [String] The resource Id dimension name override.
      attr_accessor :resource_id_dimension_name_override


      #
      # Mapper for MetricSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricSpecification',
          type: {
            name: 'Composite',
            class_name: 'MetricSpecification',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              display_description: {
                required: false,
                serialized_name: 'displayDescription',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              aggregation_type: {
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              availabilities: {
                required: false,
                serialized_name: 'availabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AvailabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Availability'
                      }
                  }
                }
              },
              enable_regional_mdm_account: {
                required: false,
                serialized_name: 'enableRegionalMdmAccount',
                type: {
                  name: 'Boolean'
                }
              },
              fill_gap_with_zero: {
                required: false,
                serialized_name: 'fillGapWithZero',
                type: {
                  name: 'Boolean'
                }
              },
              metric_filter_pattern: {
                required: false,
                serialized_name: 'metricFilterPattern',
                type: {
                  name: 'String'
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Dimension'
                      }
                  }
                }
              },
              is_internal: {
                required: false,
                serialized_name: 'isInternal',
                type: {
                  name: 'Boolean'
                }
              },
              source_mdm_account: {
                required: false,
                serialized_name: 'sourceMdmAccount',
                type: {
                  name: 'String'
                }
              },
              source_mdm_namespace: {
                required: false,
                serialized_name: 'sourceMdmNamespace',
                type: {
                  name: 'String'
                }
              },
              resource_id_dimension_name_override: {
                required: false,
                serialized_name: 'resourceIdDimensionNameOverride',
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
