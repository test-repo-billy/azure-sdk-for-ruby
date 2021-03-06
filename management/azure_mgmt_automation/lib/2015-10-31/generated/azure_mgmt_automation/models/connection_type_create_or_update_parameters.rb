# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the create or update connection type
    # operation.
    #
    class ConnectionTypeCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the connection type.
      attr_accessor :name

      # @return [Boolean] Gets or sets a Boolean value to indicate if the
      # connection type is global.
      attr_accessor :is_global

      # @return [Hash{String => FieldDefinition}] Gets or sets the field
      # definitions of the connection type.
      attr_accessor :field_definitions


      #
      # Mapper for ConnectionTypeCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionTypeCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ConnectionTypeCreateOrUpdateParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              is_global: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isGlobal',
                type: {
                  name: 'Boolean'
                }
              },
              field_definitions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.fieldDefinitions',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FieldDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FieldDefinition'
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
