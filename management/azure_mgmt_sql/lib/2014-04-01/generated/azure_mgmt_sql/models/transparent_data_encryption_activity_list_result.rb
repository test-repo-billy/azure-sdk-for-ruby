# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents the response to a list database transparent data encryption
    # activity request.
    #
    class TransparentDataEncryptionActivityListResult

      include MsRestAzure

      # @return [Array<TransparentDataEncryptionActivity>] The list of database
      # transparent data encryption activities.
      attr_accessor :value


      #
      # Mapper for TransparentDataEncryptionActivityListResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TransparentDataEncryptionActivityListResult',
          type: {
            name: 'Composite',
            class_name: 'TransparentDataEncryptionActivityListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TransparentDataEncryptionActivityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TransparentDataEncryptionActivity'
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
