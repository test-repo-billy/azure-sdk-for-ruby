# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Regenerate key parameters.
    #
    class RegenerateKeyParameters

      include MsRestAzure

      # @return [KeyName] key name to generate (Key1|Key2). Possible values
      # include: 'Key1', 'Key2'
      attr_accessor :key_name


      #
      # Mapper for RegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateKeyParameters',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
                type: {
                  name: 'Enum',
                  module: 'KeyName'
                }
              }
            }
          }
        }
      end
    end
  end
end