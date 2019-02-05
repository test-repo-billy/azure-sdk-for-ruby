# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # CDN Ip address group
    #
    class IpAddressGroup

      include MsRestAzure

      # @return [String] The delivery region of the ip address group
      attr_accessor :delivery_region

      # @return [Array<CidrIpAddress>] The list of ip v4 addresses.
      attr_accessor :ipv4addresses

      # @return [Array<CidrIpAddress>] The list of ip v6 addresses.
      attr_accessor :ipv6addresses


      #
      # Mapper for IpAddressGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IpAddressGroup',
          type: {
            name: 'Composite',
            class_name: 'IpAddressGroup',
            model_properties: {
              delivery_region: {
                required: false,
                serialized_name: 'deliveryRegion',
                type: {
                  name: 'String'
                }
              },
              ipv4addresses: {
                required: false,
                serialized_name: 'ipv4Addresses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CidrIpAddressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CidrIpAddress'
                      }
                  }
                }
              },
              ipv6addresses: {
                required: false,
                serialized_name: 'ipv6Addresses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CidrIpAddressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CidrIpAddress'
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
