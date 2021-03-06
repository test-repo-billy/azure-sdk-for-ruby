# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The trigger based on base image dependency.
    #
    class BaseImageTrigger

      include MsRestAzure

      # @return [BaseImageTriggerType] The type of the auto trigger for base
      # image dependency updates. Possible values include: 'All', 'Runtime'
      attr_accessor :base_image_trigger_type

      # @return [TriggerStatus] The current status of trigger. Possible values
      # include: 'Disabled', 'Enabled'. Default value: 'Enabled' .
      attr_accessor :status

      # @return [String] The name of the trigger.
      attr_accessor :name


      #
      # Mapper for BaseImageTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BaseImageTrigger',
          type: {
            name: 'Composite',
            class_name: 'BaseImageTrigger',
            model_properties: {
              base_image_trigger_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'baseImageTriggerType',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                default_value: 'Enabled',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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
