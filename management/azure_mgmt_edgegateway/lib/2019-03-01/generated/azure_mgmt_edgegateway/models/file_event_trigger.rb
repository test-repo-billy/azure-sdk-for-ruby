# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Trigger details.
    #
    class FileEventTrigger < Trigger

      include MsRestAzure


      def initialize
        @kind = "FileEvent"
      end

      attr_accessor :kind

      # @return [FileSourceInfo] File event source details.
      attr_accessor :source_info

      # @return [RoleSinkInfo] Role sink info.
      attr_accessor :sink_info

      # @return [String] A custom context tag typically used to correlate the
      # trigger against its usage. For example, if a periodic timer trigger is
      # intended for certain specific IoT modules in the device, the tag can be
      # the name or the image URL of the module.
      attr_accessor :custom_context_tag


      #
      # Mapper for FileEventTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileEvent',
          type: {
            name: 'Composite',
            class_name: 'FileEventTrigger',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              source_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sourceInfo',
                type: {
                  name: 'Composite',
                  class_name: 'FileSourceInfo'
                }
              },
              sink_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sinkInfo',
                type: {
                  name: 'Composite',
                  class_name: 'RoleSinkInfo'
                }
              },
              custom_context_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customContextTag',
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
