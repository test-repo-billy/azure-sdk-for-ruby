# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Provides details for log ranges
    #
    class PointInTimeRange

      include MsRestAzure

      # @return [DateTime] Start time of the time range for log recovery.
      attr_accessor :start_time

      # @return [DateTime] End time of the time range for log recovery.
      attr_accessor :end_time


      #
      # Mapper for PointInTimeRange class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PointInTimeRange',
          type: {
            name: 'Composite',
            class_name: 'PointInTimeRange',
            model_properties: {
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
