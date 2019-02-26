# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Alert on the data box edge/gateway device.
    #
    class Alert < ARMBaseModel

      include MsRestAzure

      # @return [String] Alert title.
      attr_accessor :title

      # @return [String] Alert type.
      attr_accessor :alert_type

      # @return [DateTime] UTC time when the alert appeared.
      attr_accessor :appeared_at_date_time

      # @return [String] Alert recommendation.
      attr_accessor :recommendation

      # @return [AlertSeverity] Severity of the alert. Possible values include:
      # 'Informational', 'Warning', 'Critical'
      attr_accessor :severity

      # @return [AlertErrorDetails] Error details of the alert.
      attr_accessor :error_details

      # @return [Hash{String => String}] Alert details.
      attr_accessor :detailed_information


      #
      # Mapper for Alert class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Alert',
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
              title: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              alert_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.alertType',
                type: {
                  name: 'String'
                }
              },
              appeared_at_date_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.appearedAtDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              recommendation: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendation',
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
              error_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.errorDetails',
                type: {
                  name: 'Composite',
                  class_name: 'AlertErrorDetails'
                }
              },
              detailed_information: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.detailedInformation',
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
              }
            }
          }
        }
      end
    end
  end
end
