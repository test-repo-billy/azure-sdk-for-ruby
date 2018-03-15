# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # Describes the named partition scheme of the service.
    #
    class NamedPartitionSchemeDescription < PartitionSchemeDescription

      include MsRestAzure


      def initialize
        @PartitionScheme = "Named"
      end

      attr_accessor :PartitionScheme

      # @return [Integer] The number of partitions.
      attr_accessor :count

      # @return [Array<String>] Array of size specified by the ‘Count’
      # parameter, for the names of the partitions.
      attr_accessor :names


      #
      # Mapper for NamedPartitionSchemeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Named',
          type: {
            name: 'Composite',
            class_name: 'NamedPartitionSchemeDescription',
            model_properties: {
              PartitionScheme: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PartitionScheme',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Count',
                type: {
                  name: 'Number'
                }
              },
              names: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Names',
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
              }
            }
          }
        }
      end
    end
  end
end