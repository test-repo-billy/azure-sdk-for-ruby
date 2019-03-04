# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_10_02
  module Models
    #
    # CIDR Ip address
    #
    class CidrIpAddress

      include MsRestAzure

      # @return [String] IP address itself.
      attr_accessor :base_ip_address

      # @return [Integer] The length of the prefix of the ip address.
      attr_accessor :prefix_length


      #
      # Mapper for CidrIpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'cidrIpAddress',
          type: {
            name: 'Composite',
            class_name: 'CidrIpAddress',
            model_properties: {
              base_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'baseIpAddress',
                type: {
                  name: 'String'
                }
              },
              prefix_length: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prefixLength',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
