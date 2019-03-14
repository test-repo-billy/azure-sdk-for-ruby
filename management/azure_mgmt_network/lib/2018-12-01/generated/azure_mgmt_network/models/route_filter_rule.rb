# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Route Filter Rule Resource
    #
    class RouteFilterRule < SubResource

      include MsRestAzure

      # @return [Access] The access type of the rule. Valid values are:
      # 'Allow', 'Deny'. Possible values include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [String] The rule type of the rule. Valid value is:
      # 'Community'. Default value: 'Community' .
      attr_accessor :route_filter_rule_type

      # @return [Array<String>] The collection for bgp community values to
      # filter on. e.g. ['12076:5010','12076:5020']
      attr_accessor :communities

      # @return [String] The provisioning state of the resource. Possible
      # values are: 'Updating', 'Deleting', 'Succeeded' and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] Resource location.
      attr_accessor :location

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for RouteFilterRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RouteFilterRule',
          type: {
            name: 'Composite',
            class_name: 'RouteFilterRule',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              access: {
                required: true,
                serialized_name: 'properties.access',
                type: {
                  name: 'String'
                }
              },
              route_filter_rule_type: {
                required: true,
                is_constant: true,
                serialized_name: 'properties.routeFilterRuleType',
                default_value: 'Community',
                type: {
                  name: 'String'
                }
              },
              communities: {
                required: true,
                serialized_name: 'properties.communities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
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