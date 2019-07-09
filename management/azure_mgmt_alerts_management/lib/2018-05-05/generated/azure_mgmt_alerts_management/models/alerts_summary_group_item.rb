# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05
  module Models
    #
    # Alerts summary group item
    #
    class AlertsSummaryGroupItem

      include MsRestAzure

      # @return [String] Value of the aggregated field
      attr_accessor :name

      # @return [Integer] Count of the aggregated field
      attr_accessor :count

      # @return [String] Name of the field aggregated
      attr_accessor :groupedby

      # @return [Array<AlertsSummaryGroupItem>] List of the items
      attr_accessor :values


      #
      # Mapper for AlertsSummaryGroupItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertsSummaryGroupItem',
          type: {
            name: 'Composite',
            class_name: 'AlertsSummaryGroupItem',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              groupedby: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupedby',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AlertsSummaryGroupItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlertsSummaryGroupItem'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
