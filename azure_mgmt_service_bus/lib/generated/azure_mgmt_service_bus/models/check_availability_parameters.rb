# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Parameters supplied to the Check Name Availability for Namespace and
    # ServiceBus.
    #
    class CheckAvailabilityParameters

      include MsRestAzure

      # @return [String] Name of the namespace
      attr_accessor :name

      # @return [String] Namespace location
      attr_accessor :location

      # @return [Hash{String => String}] Namespace tags
      attr_accessor :tags

      # @return [Boolean] Is true if the name is available and can be used to
      # create new Namespace/ServiceBus. Otherwise false.
      attr_accessor :is_availiable


      #
      # Mapper for CheckAvailabilityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'CheckAvailabilityParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              is_availiable: {
                required: false,
                serialized_name: 'isAvailiable',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
