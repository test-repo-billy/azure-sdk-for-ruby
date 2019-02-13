# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PrivateDns::Mgmt::V2018_09_01
  module Models
    #
    # Describes a Private DNS zone.
    #
    class PrivateZone < TrackedResource

      include MsRestAzure

      # @return [String] The ETag of the zone.
      attr_accessor :etag

      # @return [Integer] The maximum number of record sets that can be created
      # in this Private DNS zone. This is a read-only property and any attempt
      # to set this value will be ignored.
      attr_accessor :max_number_of_record_sets

      # @return [Integer] The current number of record sets in this Private DNS
      # zone. This is a read-only property and any attempt to set this value
      # will be ignored.
      attr_accessor :number_of_record_sets

      # @return [Integer] The maximum number of virtual networks that can be
      # linked to this Private DNS zone. This is a read-only property and any
      # attempt to set this value will be ignored.
      attr_accessor :max_number_of_virtual_network_links

      # @return [Integer] The current number of virtual networks that are
      # linked to this Private DNS zone. This is a read-only property and any
      # attempt to set this value will be ignored.
      attr_accessor :number_of_virtual_network_links

      # @return [Integer] The maximum number of virtual networks that can be
      # linked to this Private DNS zone with registration enabled. This is a
      # read-only property and any attempt to set this value will be ignored.
      attr_accessor :max_number_of_virtual_network_links_with_registration

      # @return [Integer] The current number of virtual networks that are
      # linked to this Private DNS zone with registration enabled. This is a
      # read-only property and any attempt to set this value will be ignored.
      attr_accessor :number_of_virtual_network_links_with_registration

      # @return [ProvisioningState] The provisioning state of the resource.
      # This is a read-only property and any attempt to set this value will be
      # ignored. Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :provisioning_state


      #
      # Mapper for PrivateZone class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PrivateZone',
          type: {
            name: 'Composite',
            class_name: 'PrivateZone',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              max_number_of_record_sets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxNumberOfRecordSets',
                type: {
                  name: 'Number'
                }
              },
              number_of_record_sets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfRecordSets',
                type: {
                  name: 'Number'
                }
              },
              max_number_of_virtual_network_links: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxNumberOfVirtualNetworkLinks',
                type: {
                  name: 'Number'
                }
              },
              number_of_virtual_network_links: {
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfVirtualNetworkLinks',
                type: {
                  name: 'Number'
                }
              },
              max_number_of_virtual_network_links_with_registration: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxNumberOfVirtualNetworkLinksWithRegistration',
                type: {
                  name: 'Number'
                }
              },
              number_of_virtual_network_links_with_registration: {
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfVirtualNetworkLinksWithRegistration',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
