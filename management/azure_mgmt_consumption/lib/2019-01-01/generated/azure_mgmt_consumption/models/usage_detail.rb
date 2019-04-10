# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_01_01
  module Models
    #
    # An usage detail resource.
    #
    class UsageDetail < Resource

      include MsRestAzure

      # @return [String] The id of the billing period resource that the usage
      # belongs to.
      attr_accessor :billing_period_id

      # @return [String] The id of the invoice resource that the usage belongs
      # to.
      attr_accessor :invoice_id

      # @return [DateTime] The start of the date time range covered by the
      # usage detail.
      attr_accessor :usage_start

      # @return [DateTime] The end of the date time range covered by the usage
      # detail.
      attr_accessor :usage_end

      # @return [String] The name of the resource instance that the usage is
      # about.
      attr_accessor :instance_name

      # @return [String] The uri of the resource instance that the usage is
      # about.
      attr_accessor :instance_id

      # @return [String] The location of the resource instance that the usage
      # is about.
      attr_accessor :instance_location

      # @return [String] The ISO currency in which the meter is charged, for
      # example, USD.
      attr_accessor :currency

      # @return The quantity of usage.
      attr_accessor :usage_quantity

      # @return The billable usage quantity.
      attr_accessor :billable_quantity

      # @return The amount of cost before tax.
      attr_accessor :pretax_cost

      # @return [Boolean] The estimated usage is subject to change.
      attr_accessor :is_estimated

      # @return The meter id (GUID).
      attr_accessor :meter_id

      # @return [MeterDetails] The details about the meter. By default this is
      # not populated, unless it's specified in $expand.
      attr_accessor :meter_details

      # @return Subscription guid.
      attr_accessor :subscription_guid

      # @return [String] Subscription name.
      attr_accessor :subscription_name

      # @return [String] Account name.
      attr_accessor :account_name

      # @return [String] Department name.
      attr_accessor :department_name

      # @return [String] Product name.
      attr_accessor :product

      # @return [String] Consumed service name.
      attr_accessor :consumed_service

      # @return [String] The cost center of this department if it is a
      # department and a costcenter exists
      attr_accessor :cost_center

      # @return [String] Part Number
      attr_accessor :part_number

      # @return [String] Resource Guid
      attr_accessor :resource_guid

      # @return [String] Offer Id
      attr_accessor :offer_id

      # @return [Boolean] Charges billed separately
      attr_accessor :charges_billed_separately

      # @return [String] Resource Location
      attr_accessor :location

      # @return [String] Additional details of this usage item. By default this
      # is not populated, unless it's specified in $expand.
      attr_accessor :additional_properties


      #
      # Mapper for UsageDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UsageDetail',
          type: {
            name: 'Composite',
            class_name: 'UsageDetail',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              billing_period_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodId',
                type: {
                  name: 'String'
                }
              },
              invoice_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceId',
                type: {
                  name: 'String'
                }
              },
              usage_start: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageStart',
                type: {
                  name: 'DateTime'
                }
              },
              usage_end: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageEnd',
                type: {
                  name: 'DateTime'
                }
              },
              instance_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceName',
                type: {
                  name: 'String'
                }
              },
              instance_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceId',
                type: {
                  name: 'String'
                }
              },
              instance_location: {
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceLocation',
                type: {
                  name: 'String'
                }
              },
              currency: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currency',
                type: {
                  name: 'String'
                }
              },
              usage_quantity: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageQuantity',
                type: {
                  name: 'Number'
                }
              },
              billable_quantity: {
                required: false,
                read_only: true,
                serialized_name: 'properties.billableQuantity',
                type: {
                  name: 'Number'
                }
              },
              pretax_cost: {
                required: false,
                read_only: true,
                serialized_name: 'properties.pretaxCost',
                type: {
                  name: 'Number'
                }
              },
              is_estimated: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isEstimated',
                type: {
                  name: 'Boolean'
                }
              },
              meter_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.meterId',
                type: {
                  name: 'String'
                }
              },
              meter_details: {
                required: false,
                read_only: true,
                serialized_name: 'properties.meterDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MeterDetails'
                }
              },
              subscription_guid: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionGuid',
                type: {
                  name: 'String'
                }
              },
              subscription_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionName',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.accountName',
                type: {
                  name: 'String'
                }
              },
              department_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.departmentName',
                type: {
                  name: 'String'
                }
              },
              product: {
                required: false,
                read_only: true,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              consumed_service: {
                required: false,
                read_only: true,
                serialized_name: 'properties.consumedService',
                type: {
                  name: 'String'
                }
              },
              cost_center: {
                required: false,
                read_only: true,
                serialized_name: 'properties.costCenter',
                type: {
                  name: 'String'
                }
              },
              part_number: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partNumber',
                type: {
                  name: 'String'
                }
              },
              resource_guid: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              offer_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.offerId',
                type: {
                  name: 'String'
                }
              },
              charges_billed_separately: {
                required: false,
                read_only: true,
                serialized_name: 'properties.chargesBilledSeparately',
                type: {
                  name: 'Boolean'
                }
              },
              location: {
                required: false,
                read_only: true,
                serialized_name: 'properties.location',
                type: {
                  name: 'String'
                }
              },
              additional_properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties.additionalProperties',
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
