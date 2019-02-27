# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Profile of a lab user.
    #
    class UserFragment < UpdateResource

      include MsRestAzure

      # @return [UserIdentityFragment] The identity of the user.
      attr_accessor :identity

      # @return [UserSecretStoreFragment] The secret store of the user.
      attr_accessor :secret_store


      #
      # Mapper for UserFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserFragment',
          type: {
            name: 'Composite',
            class_name: 'UserFragment',
            model_properties: {
              tags: {
                required: false,
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
              identity: {
                required: false,
                serialized_name: 'properties.identity',
                type: {
                  name: 'Composite',
                  class_name: 'UserIdentityFragment'
                }
              },
              secret_store: {
                required: false,
                serialized_name: 'properties.secretStore',
                type: {
                  name: 'Composite',
                  class_name: 'UserSecretStoreFragment'
                }
              }
            }
          }
        }
      end
    end
  end
end
