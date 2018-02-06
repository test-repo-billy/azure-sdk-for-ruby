# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The Challenge-Handshake Authentication Protocol (CHAP) settings.
    #
    class ChapSettings

      include MsRestAzure

      # @return [String] The CHAP initiator user.
      attr_accessor :initiator_user

      # @return [AsymmetricEncryptedSecret] The CHAP initiator secret.
      attr_accessor :initiator_secret

      # @return [String] The CHAP target user.
      attr_accessor :target_user

      # @return [AsymmetricEncryptedSecret] The target secret.
      attr_accessor :target_secret


      #
      # Mapper for ChapSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChapSettings',
          type: {
            name: 'Composite',
            class_name: 'ChapSettings',
            model_properties: {
              initiator_user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initiatorUser',
                type: {
                  name: 'String'
                }
              },
              initiator_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initiatorSecret',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              },
              target_user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetUser',
                type: {
                  name: 'String'
                }
              },
              target_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetSecret',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              }
            }
          }
        }
      end
    end
  end
end