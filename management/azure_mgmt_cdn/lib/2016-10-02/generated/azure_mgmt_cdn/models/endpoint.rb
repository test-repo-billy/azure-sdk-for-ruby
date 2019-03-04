# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_10_02
  module Models
    #
    # CDN endpoint is the entity within a CDN profile containing configuration
    # information such as origin, protocol, content caching and delivery
    # behavior. The CDN endpoint uses the URL format
    # <endpointname>.azureedge.net.
    #
    class Endpoint < Resource

      include MsRestAzure

      # @return [String] The host header CDN sends along with content requests
      # to origin. The default value is the host name of the origin.
      attr_accessor :origin_host_header

      # @return [String] The path used when CDN sends request to origin.
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression
      # applies. The value should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether content compression is enabled on
      # CDN. Default value is false. If compression is enabled, content will be
      # served as compressed if user requests for a compressed version. Content
      # won't be compressed on CDN when requested content is smaller than 1
      # byte or larger than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether HTTP traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether HTTPS traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines the query string caching
      # behavior. Possible values include: 'IgnoreQueryString',
      # 'BypassCaching', 'UseQueryString', 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [OptimizationType] Customer can specify what scenario they want
      # this CDN endpoint to optimize, e.g. Download, Media services. With this
      # information we can apply scenario driven optimization. Possible values
      # include: 'GeneralWebDelivery', 'GeneralMediaStreaming',
      # 'VideoOnDemandMediaStreaming', 'LargeFileDownload',
      # 'DynamicSiteAcceleration'
      attr_accessor :optimization_type

      # @return [Array<GeoFilter>] List of rules defining user geo access
      # within a CDN endpoint. Each geo filter defines an access rule to a
      # specified path or content, e.g. block APAC for path /pictures/
      attr_accessor :geo_filters

      # @return [String] The host name of the endpoint structured as
      # {endpointName}.{DNSZone}, e.g. contoso.azureedge.net
      attr_accessor :host_name

      # @return [Array<DeepCreatedOrigin>] The source of the content being
      # delivered via CDN.
      attr_accessor :origins

      # @return [EndpointResourceState] Resource status of the endpoint.
      # Possible values include: 'Creating', 'Deleting', 'Running', 'Starting',
      # 'Stopped', 'Stopping'
      attr_accessor :resource_state

      # @return [String] Provisioning status of the endpoint.
      attr_accessor :provisioning_state


      #
      # Mapper for Endpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Endpoint',
          type: {
            name: 'Composite',
            class_name: 'Endpoint',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              origin_host_header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              origin_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originPath',
                type: {
                  name: 'String'
                }
              },
              content_types_to_compress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentTypesToCompress',
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
              is_compression_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_http_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHttpAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              is_https_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHttpsAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              query_string_caching_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.queryStringCachingBehavior',
                type: {
                  name: 'Enum',
                  module: 'QueryStringCachingBehavior'
                }
              },
              optimization_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.optimizationType',
                type: {
                  name: 'String'
                }
              },
              geo_filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.geoFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GeoFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GeoFilter'
                      }
                  }
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              origins: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.origins',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeepCreatedOriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeepCreatedOrigin'
                      }
                  }
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
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
