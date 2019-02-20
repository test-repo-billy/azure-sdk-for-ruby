# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_04_01
  module Models
    #
    # Address information for domain registration.
    #
    class Address

      include MsRestAzure

      # @return [String] First line of an Address.
      attr_accessor :address1

      # @return [String] The second line of the Address. Optional.
      attr_accessor :address2

      # @return [String] The city for the address.
      attr_accessor :city

      # @return [String] The country for the address.
      attr_accessor :country

      # @return [String] The postal code for the address.
      attr_accessor :postal_code

      # @return [String] The state or province for the address.
      attr_accessor :state


      #
      # Mapper for Address class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Address',
          type: {
            name: 'Composite',
            class_name: 'Address',
            model_properties: {
              address1: {
                required: true,
                serialized_name: 'address1',
                type: {
                  name: 'String'
                }
              },
              address2: {
                required: false,
                serialized_name: 'address2',
                type: {
                  name: 'String'
                }
              },
              city: {
                required: true,
                serialized_name: 'city',
                type: {
                  name: 'String'
                }
              },
              country: {
                required: true,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              postal_code: {
                required: true,
                serialized_name: 'postalCode',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: true,
                serialized_name: 'state',
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
