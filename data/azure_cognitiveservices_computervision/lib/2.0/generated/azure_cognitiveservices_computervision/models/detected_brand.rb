# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_0
  module Models
    #
    # A brand detected in an image.
    #
    class DetectedBrand

      include MsRestAzure

      # @return [String] Label for the brand.
      attr_accessor :name

      # @return [Float] Confidence score of having observed the brand in the
      # image, as a value ranging from 0 to 1.
      attr_accessor :confidence

      # @return [BoundingRect] Approximate location of the detected brand.
      attr_accessor :rectangle


      #
      # Mapper for DetectedBrand class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DetectedBrand',
          type: {
            name: 'Composite',
            class_name: 'DetectedBrand',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              confidence: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'confidence',
                type: {
                  name: 'Double'
                }
              },
              rectangle: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'rectangle',
                type: {
                  name: 'Composite',
                  class_name: 'BoundingRect'
                }
              }
            }
          }
        }
      end
    end
  end
end
