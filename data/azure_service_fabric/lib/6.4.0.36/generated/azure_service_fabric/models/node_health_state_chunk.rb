# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Represents the health state chunk of a node, which contains the node name
    # and its aggregated health state.
    #
    class NodeHealthStateChunk < EntityHealthStateChunk

      include MsRestAzure

      # @return [String] The name of a Service Fabric node.
      attr_accessor :node_name


      #
      # Mapper for NodeHealthStateChunk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeHealthStateChunk',
          type: {
            name: 'Composite',
            class_name: 'NodeHealthStateChunk',
            model_properties: {
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
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
