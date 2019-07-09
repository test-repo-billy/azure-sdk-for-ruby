# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_05_05_preview
  module Models
    #
    # Set of related alerts grouped together smartly by AMS.
    #
    class SmartGroup < Resource

      include MsRestAzure

      # @return [Integer] Total number of alerts in smart group
      attr_accessor :alerts_count

      # @return [State] Smart group state. Possible values include: 'New',
      # 'Acknowledged', 'Closed'
      attr_accessor :smart_group_state

      # @return [Severity] Severity of smart group is the highest(Sev0 >... >
      # Sev4) severity of all the alerts in the group. Possible values include:
      # 'Sev0', 'Sev1', 'Sev2', 'Sev3', 'Sev4'
      attr_accessor :severity

      # @return [DateTime] Creation time of smart group. Date-Time in ISO-8601
      # format.
      attr_accessor :start_date_time

      # @return [DateTime] Last updated time of smart group. Date-Time in
      # ISO-8601 format.
      attr_accessor :last_modified_date_time

      # @return [String] Last modified by user name.
      attr_accessor :last_modified_user_name

      # @return [Array<SmartGroupAggregatedProperty>] Summary of target
      # resources in the smart group
      attr_accessor :resources

      # @return [Array<SmartGroupAggregatedProperty>] Summary of target
      # resource types in the smart group
      attr_accessor :resource_types

      # @return [Array<SmartGroupAggregatedProperty>] Summary of target
      # resource groups in the smart group
      attr_accessor :resource_groups

      # @return [Array<SmartGroupAggregatedProperty>] Summary of
      # monitorServices in the smart group
      attr_accessor :monitor_services

      # @return [Array<SmartGroupAggregatedProperty>] Summary of
      # monitorConditions in the smart group
      attr_accessor :monitor_conditions

      # @return [Array<SmartGroupAggregatedProperty>] Summary of alertStates in
      # the smart group
      attr_accessor :alert_states

      # @return [Array<SmartGroupAggregatedProperty>] Summary of
      # alertSeverities in the smart group
      attr_accessor :alert_severities

      # @return [String] The URI to fetch the next page of alerts. Call
      # ListNext() with this URI to fetch the next page alerts.
      attr_accessor :next_link


      #
      # Mapper for SmartGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'smartGroup',
          type: {
            name: 'Composite',
            class_name: 'SmartGroup',
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
              alerts_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alertsCount',
                type: {
                  name: 'Number'
                }
              },
              smart_group_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.smartGroupState',
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
              resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              resource_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              resource_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              monitor_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.monitorServices',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              monitor_conditions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.monitorConditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              alert_states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alertStates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              alert_severities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alertSeverities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupAggregatedPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupAggregatedProperty'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nextLink',
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
