# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    class CampaignPushResult

      include MsRestAzure

      # @return [Array<String>] A JSON array containing all identifiers that
      # have been rejected. A device can be rejected for the following
      # reasons: * The device hasn’t reported any session yet. * The device
      # is over quota (if a push quota filter is applied on your campaign).
      # Please note that if the request parameters are valid but all the
      # specified devices are rejected, the status code is still `200` with a
      # response including all the devices as being rejected.
      attr_accessor :invalid_device_ids


      #
      # Mapper for CampaignPushResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CampaignPushResult',
          type: {
            name: 'Composite',
            class_name: 'CampaignPushResult',
            model_properties: {
              invalid_device_ids: {
                required: false,
                serialized_name: 'invalidDeviceIds',
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
              }
            }
          }
        }
      end
    end
  end
end
