# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents an Azure SQL Database.
    #
    class Database < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] Kind of database.  This is metadata used for the Azure
      # portal experience.
      attr_accessor :kind

      # @return [String] The collation of the Azure SQL database. If createMode
      # is not Default, this value is ignored.
      attr_accessor :collation

      # @return [DateTime] The creation date of the Azure SQL database (ISO8601
      # format).
      attr_accessor :creation_date

      # @return [Integer] The containment state of the Azure SQL database.
      attr_accessor :containment_state

      # @return The current Service Level Objective ID of the Azure SQL
      # database. This is the ID of the Service Level Objective that is
      # currently active.
      attr_accessor :current_service_objective_id

      # @return [String] The ID of the Azure SQL database.
      attr_accessor :database_id

      # @return [DateTime] This records the earliest start date and time that
      # restore is available for this Azure SQL Database (ISO8601 format).
      attr_accessor :earliest_restore_date

      # @return [CreateMode] Specifies the type of database to create. If
      # createMode is not set to Default, sourceDatabaseId must be specified.
      # If createMode is set to PointInTimeRestore, then restorePointInTime
      # must be specified. If createMode is set to Restore, then
      # sourceDatabaseDeletionDate must be specified. Possible values include:
      # 'Copy', 'Default', 'NonReadableSecondary', 'OnlineSecondary',
      # 'PointInTimeRestore', 'Recovery', 'Restore'
      attr_accessor :create_mode

      # @return [String] Conditional. If createMode is not set to Default, then
      # this value must be specified. Specifies the resource ID of the source
      # database. If createMode is NonReadableSecondary or OnlineSecondary, the
      # name of the source database must be the same as this new database.
      attr_accessor :source_database_id

      # @return [DateTime] Conditional. If createMode is set to
      # PointInTimeRestore, then this value must be specified. Specifies the
      # point in time (ISO8601 format) of the source database that will be
      # restored to create the new database. Must be greater than or equal to
      # the source database's earliestRestoreDate value.
      attr_accessor :restore_point_in_time

      # @return [DatabaseEditions] The edition of the Azure SQL database. The
      # DatabaseEditions enumeration contains all the valid editions. If
      # createMode is NonReadableSecondary or OnlineSecondary, this value is
      # ignored. Possible values include: 'Web', 'Business', 'Basic',
      # 'Standard', 'Premium', 'Free', 'Stretch', 'DataWarehouse', 'System'
      attr_accessor :edition

      # @return [String] The max size of the Azure SQL database expressed in
      # bytes. If createMode is not Default, this value is ignored. Note: Only
      # the following sizes are supported (in addition to limitations being
      # placed on each edition): { 100 MB | 500 MB |1 GB | 5 GB | 10 GB | 20 GB
      # | 30 GB … 150 GB | 200 GB … 500 GB }
      attr_accessor :max_size_bytes

      # @return The configured Service Level Objective ID of the Azure SQL
      # database. This is the Service Level Objective that is in the process of
      # being applied to the Azure SQL database. Once successfully updated, it
      # will match the value of currentServiceObjectiveId property.
      attr_accessor :requested_service_objective_id

      # @return [ServiceObjectiveName] The name of the configured Service Level
      # Objective of the Azure SQL database. This is the Service Level
      # Objective that is in the process of being applied to the Azure SQL
      # database. Once successfully updated, it will match the value of
      # serviceLevelObjective property. Possible values include: 'Basic', 'S0',
      # 'S1', 'S2', 'S3', 'P1', 'P2', 'P3', 'P4', 'P6', 'P11', 'P15', 'System',
      # 'System1', 'System2', 'System3', 'System4'
      attr_accessor :requested_service_objective_name

      # @return [ServiceObjectiveName] The current Service Level Objective of
      # the Azure SQL database. Possible values include: 'Basic', 'S0', 'S1',
      # 'S2', 'S3', 'P1', 'P2', 'P3', 'P4', 'P6', 'P11', 'P15', 'System',
      # 'System1', 'System2', 'System3', 'System4'
      attr_accessor :service_level_objective

      # @return [String] The status of the Azure SQL database.
      attr_accessor :status

      # @return [String] The name of the Azure SQL Elastic Pool the database is
      # in.
      attr_accessor :elastic_pool_name

      # @return [String] The default secondary region for this database.
      attr_accessor :default_secondary_location

      # @return [Array<ServiceTierAdvisor>] The list of service tier advisors
      # for this database. Expanded property
      attr_accessor :service_tier_advisors

      # @return [Array<Schema>] The schemas from this database.
      attr_accessor :schemas

      # @return [Array<TransparentDataEncryption>] The transparent data
      # encryption info for this database.
      attr_accessor :transparent_data_encryption

      # @return [Array<RecommendedIndex>] The recommended indices for this
      # database.
      attr_accessor :recommended_index

      # @return The id indicating the failover group containing this database.
      attr_accessor :failover_group_id

      # @return [ReadScale] Conditional.  If the database is a geo-secondary,
      # readScale indicates whether read-only connections are allowed to this
      # database or not. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :read_scale

      # @return [SampleName] Indicates the name of the sample schema to apply
      # when creating this database. If createMode is not Default, this value
      # is ignored. Possible values include: 'AdventureWorksLT'
      attr_accessor :sample_name


      #
      # Mapper for Database class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Database',
          type: {
            name: 'Composite',
            class_name: 'Database',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              location: {
                required: true,
                serialized_name: 'location',
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
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              collation: {
                required: false,
                serialized_name: 'properties.collation',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              containment_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.containmentState',
                type: {
                  name: 'Number'
                }
              },
              current_service_objective_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentServiceObjectiveId',
                type: {
                  name: 'String'
                }
              },
              database_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseId',
                type: {
                  name: 'String'
                }
              },
              earliest_restore_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.earliestRestoreDate',
                type: {
                  name: 'DateTime'
                }
              },
              create_mode: {
                required: false,
                serialized_name: 'properties.createMode',
                type: {
                  name: 'String'
                }
              },
              source_database_id: {
                required: false,
                serialized_name: 'properties.sourceDatabaseId',
                type: {
                  name: 'String'
                }
              },
              restore_point_in_time: {
                required: false,
                serialized_name: 'properties.restorePointInTime',
                type: {
                  name: 'DateTime'
                }
              },
              edition: {
                required: false,
                serialized_name: 'properties.edition',
                type: {
                  name: 'String'
                }
              },
              max_size_bytes: {
                required: false,
                serialized_name: 'properties.maxSizeBytes',
                type: {
                  name: 'String'
                }
              },
              requested_service_objective_id: {
                required: false,
                serialized_name: 'properties.requestedServiceObjectiveId',
                type: {
                  name: 'String'
                }
              },
              requested_service_objective_name: {
                required: false,
                serialized_name: 'properties.requestedServiceObjectiveName',
                type: {
                  name: 'String'
                }
              },
              service_level_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              elastic_pool_name: {
                required: false,
                serialized_name: 'properties.elasticPoolName',
                type: {
                  name: 'String'
                }
              },
              default_secondary_location: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultSecondaryLocation',
                type: {
                  name: 'String'
                }
              },
              service_tier_advisors: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceTierAdvisors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServiceTierAdvisorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceTierAdvisor'
                      }
                  }
                }
              },
              schemas: {
                required: false,
                read_only: true,
                serialized_name: 'properties.schemas',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SchemaElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Schema'
                      }
                  }
                }
              },
              transparent_data_encryption: {
                required: false,
                read_only: true,
                serialized_name: 'properties.transparentDataEncryption',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TransparentDataEncryptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TransparentDataEncryption'
                      }
                  }
                }
              },
              recommended_index: {
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendedIndex',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecommendedIndexElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedIndex'
                      }
                  }
                }
              },
              failover_group_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.failoverGroupId',
                type: {
                  name: 'String'
                }
              },
              read_scale: {
                required: false,
                serialized_name: 'properties.readScale',
                type: {
                  name: 'Enum',
                  module: 'ReadScale'
                }
              },
              sample_name: {
                required: false,
                serialized_name: 'properties.sampleName',
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
