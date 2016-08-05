# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::KeyVault
  module Models
    #
    # SKU details
    #
    class Sku

      include MsRestAzure

      # @return [SkuFamily] SKU family name. Possible values include: 'A'
      attr_accessor :family

      # @return [SkuName] SKU name to specify whether the key vault is a
      # standard vault or a premium vault. Possible values include:
      # 'standard', 'premium'
      attr_accessor :name


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'SkuName'
                }
              }
            }
          }
        }
      end
    end
  end
end
