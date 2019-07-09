# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_03_01
  module Models
    #
    # Alert modification item.
    #
    class AlertModificationItem

      include MsRestAzure

      # @return [AlertModificationEvent] Reason for the modification. Possible
      # values include: 'AlertCreated', 'StateChange', 'MonitorConditionChange'
      attr_accessor :modification_event

      # @return [String] Old value
      attr_accessor :old_value

      # @return [String] New value
      attr_accessor :new_value

      # @return [String] Modified date and time
      attr_accessor :modified_at

      # @return [String] Modified user details (Principal client name)
      attr_accessor :modified_by

      # @return [String] Modification comments
      attr_accessor :comments

      # @return [String] Description of the modification
      attr_accessor :description


      #
      # Mapper for AlertModificationItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertModificationItem',
          type: {
            name: 'Composite',
            class_name: 'AlertModificationItem',
            model_properties: {
              modification_event: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modificationEvent',
                type: {
                  name: 'Enum',
                  module: 'AlertModificationEvent'
                }
              },
              old_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'oldValue',
                type: {
                  name: 'String'
                }
              },
              new_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'newValue',
                type: {
                  name: 'String'
                }
              },
              modified_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedAt',
                type: {
                  name: 'String'
                }
              },
              modified_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedBy',
                type: {
                  name: 'String'
                }
              },
              comments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'comments',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
