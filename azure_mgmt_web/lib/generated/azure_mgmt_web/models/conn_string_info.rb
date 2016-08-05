# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Represents database connection string information
    #
    class ConnStringInfo

      include MsRestAzure

      # @return [String] Name of connection string
      attr_accessor :name

      # @return [String] Connection string value
      attr_accessor :connection_string

      # @return [DatabaseServerType] Type of database. Possible values
      # include: 'MySql', 'SQLServer', 'SQLAzure', 'Custom'
      attr_accessor :type


      #
      # Mapper for ConnStringInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnStringInfo',
          type: {
            name: 'Composite',
            class_name: 'ConnStringInfo',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              connection_string: {
                required: false,
                serialized_name: 'connectionString',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'DatabaseServerType'
                }
              }
            }
          }
        }
      end
    end
  end
end
