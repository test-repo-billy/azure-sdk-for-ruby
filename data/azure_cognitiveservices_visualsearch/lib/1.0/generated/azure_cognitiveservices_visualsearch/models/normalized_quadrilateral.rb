# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::VisualSearch::V1_0
  module Models
    #
    # Defines a region of an image. The region is a convex quadrilateral
    # defined by coordinates of its top left, top right, bottom left, and
    # bottom right points. The coordinates are fractional values of the
    # original image's width and height in the range 0.0 through 1.0.
    #
    class NormalizedQuadrilateral < StructuredValue

      include MsRestAzure


      def initialize
        @_type = "NormalizedQuadrilateral"
      end

      attr_accessor :_type

      # @return [Point2D] The top left corner coordinate.
      attr_accessor :top_left

      # @return [Point2D] The top right corner coordinate.
      attr_accessor :top_right

      # @return [Point2D] The bottom right corner coordinate.
      attr_accessor :bottom_right

      # @return [Point2D] The bottom left corner coordinate.
      attr_accessor :bottom_left


      #
      # Mapper for NormalizedQuadrilateral class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NormalizedQuadrilateral',
          type: {
            name: 'Composite',
            class_name: 'NormalizedQuadrilateral',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              read_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'readLink',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
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
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              alternate_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alternateName',
                type: {
                  name: 'String'
                }
              },
              bing_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bingId',
                type: {
                  name: 'String'
                }
              },
              top_left: {
                client_side_validation: true,
                required: true,
                serialized_name: 'topLeft',
                type: {
                  name: 'Composite',
                  class_name: 'Point2D'
                }
              },
              top_right: {
                client_side_validation: true,
                required: true,
                serialized_name: 'topRight',
                type: {
                  name: 'Composite',
                  class_name: 'Point2D'
                }
              },
              bottom_right: {
                client_side_validation: true,
                required: true,
                serialized_name: 'bottomRight',
                type: {
                  name: 'Composite',
                  class_name: 'Point2D'
                }
              },
              bottom_left: {
                client_side_validation: true,
                required: true,
                serialized_name: 'bottomLeft',
                type: {
                  name: 'Composite',
                  class_name: 'Point2D'
                }
              }
            }
          }
        }
      end
    end
  end
end
