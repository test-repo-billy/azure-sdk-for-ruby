# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A database query.
    #
    class QueryStatistic

      include MsRestAzure

      # @return [String] The id of the query
      attr_accessor :query_id

      # @return [Array<QueryInterval>] The list of query intervals.
      attr_accessor :intervals


      #
      # Mapper for QueryStatistic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'QueryStatistic',
          type: {
            name: 'Composite',
            class_name: 'QueryStatistic',
            model_properties: {
              query_id: {
                required: false,
                read_only: true,
                serialized_name: 'queryId',
                type: {
                  name: 'String'
                }
              },
              intervals: {
                required: false,
                read_only: true,
                serialized_name: 'intervals',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'QueryIntervalElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QueryInterval'
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
