# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Sku of the Namespace.
    #
    class ARMSku

      include MsRestAzure

      # @return [Name] The resource type that this object applies to. Eg:
      # NamespaceType. Possible values include: 'Basic', 'Standard', 'Premium'
      attr_accessor :name

      # @return [Tier] The tier of this particular SKU. Possible values
      # include: 'Basic', 'Standard', 'Premium'
      attr_accessor :tier

      # @return [Integer] The messaging units or eventhub throughput units
      attr_accessor :capacity


      #
      # Mapper for ARMSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ARMSku',
          type: {
            name: 'Composite',
            class_name: 'ARMSku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'Tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'Capacity',
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
