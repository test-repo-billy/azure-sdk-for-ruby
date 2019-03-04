# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MariaDB::Mgmt::V2018_06_01
  module Models
    #
    # Represents a server.
    #
    class Server < TrackedResource

      include MsRestAzure

      # @return [Sku] The SKU (pricing tier) of the server.
      attr_accessor :sku

      # @return [String] The administrator's login name of a server. Can only
      # be specified when the server is being created (and is required for
      # creation).
      attr_accessor :administrator_login

      # @return [ServerVersion] Server version. Possible values include: '5.6',
      # '5.7'
      attr_accessor :version

      # @return [SslEnforcementEnum] Enable ssl enforcement or not when connect
      # to server. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :ssl_enforcement

      # @return [ServerState] A state of a server that is visible to user.
      # Possible values include: 'Ready', 'Dropping', 'Disabled'
      attr_accessor :user_visible_state

      # @return [String] The fully qualified domain name of a server.
      attr_accessor :fully_qualified_domain_name

      # @return [DateTime] Earliest restore point creation time (ISO8601
      # format)
      attr_accessor :earliest_restore_date

      # @return [StorageProfile] Storage profile of a server.
      attr_accessor :storage_profile

      # @return [String] The replication role of the server.
      attr_accessor :replication_role

      # @return [String] The master server id of a replica server.
      attr_accessor :master_server_id

      # @return [Integer] The maximum number of replicas that a master server
      # can have.
      attr_accessor :replica_capacity


      #
      # Mapper for Server class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Server',
          type: {
            name: 'Composite',
            class_name: 'Server',
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
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              administrator_login: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              ssl_enforcement: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sslEnforcement',
                type: {
                  name: 'Enum',
                  module: 'SslEnforcementEnum'
                }
              },
              user_visible_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userVisibleState',
                type: {
                  name: 'String'
                }
              },
              fully_qualified_domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fullyQualifiedDomainName',
                type: {
                  name: 'String'
                }
              },
              earliest_restore_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.earliestRestoreDate',
                type: {
                  name: 'DateTime'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'StorageProfile'
                }
              },
              replication_role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.replicationRole',
                type: {
                  name: 'String'
                }
              },
              master_server_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.masterServerId',
                type: {
                  name: 'String'
                }
              },
              replica_capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.replicaCapacity',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
