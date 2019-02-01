# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # The response from the check name availability request.
    #
    class EntityNameAvailabilityCheckOutput

      include MsRestAzure

      # @return [Boolean] Specifies if the name is available.
      attr_accessor :name_available

      # @return [String] Specifies the reason if the name is not available.
      attr_accessor :reason

      # @return [String] Specifies the detailed reason if the name is not
      # available.
      attr_accessor :message


      #
      # Mapper for EntityNameAvailabilityCheckOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EntityNameAvailabilityCheckOutput',
          type: {
            name: 'Composite',
            class_name: 'EntityNameAvailabilityCheckOutput',
            model_properties: {
              name_available: {
                required: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
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
