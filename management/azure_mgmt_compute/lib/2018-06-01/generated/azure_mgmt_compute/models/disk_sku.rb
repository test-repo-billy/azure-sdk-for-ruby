# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, or
    # UltraSSD_LRS.
    #
    class DiskSku

      include MsRestAzure

      # @return [DiskStorageAccountTypes] The sku name. Possible values
      # include: 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS',
      # 'UltraSSD_LRS'
      attr_accessor :name

      # @return [String] The sku tier. Default value: 'Standard' .
      attr_accessor :tier


      #
      # Mapper for DiskSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskSku',
          type: {
            name: 'Composite',
            class_name: 'DiskSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tier',
                default_value: 'Standard',
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
