# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Network Status details.
    #
    class NetworkStatusContract

      include MsRestAzure

      # @return [Array<String>] Gets the list of DNS servers IPV4 addresses.
      attr_accessor :dns_servers

      # @return [Array<ConnectivityStatusContract>] Gets the list of
      # Connectivity Status to the Resources on which the service depends upon.
      attr_accessor :connectivity_status


      #
      # Mapper for NetworkStatusContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkStatusContract',
          type: {
            name: 'Composite',
            class_name: 'NetworkStatusContract',
            model_properties: {
              dns_servers: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              connectivity_status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'connectivityStatus',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectivityStatusContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectivityStatusContract'
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
