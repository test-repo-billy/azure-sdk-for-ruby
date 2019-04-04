# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_01_01
  module Models
    #
    # Parameters supplied to the Update operation.
    #
    class BatchAccountUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] The user specified tags associated
      # with the account.
      attr_accessor :tags

      # @return [AutoStorageBaseProperties] The properties related to auto
      # storage account.
      attr_accessor :auto_storage


      #
      # Mapper for BatchAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BatchAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'BatchAccountUpdateParameters',
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
              auto_storage: {
                required: false,
                serialized_name: 'properties.autoStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AutoStorageBaseProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
