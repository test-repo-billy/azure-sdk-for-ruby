# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-06-15-preview/generated/azure_mgmt_event_grid/module_definition'
require 'ms_rest_azure'

module Azure::EventGrid::Mgmt::V2017_06_15_preview
  autoload :EventSubscriptions,                                 '2017-06-15-preview/generated/azure_mgmt_event_grid/event_subscriptions.rb'
  autoload :Operations,                                         '2017-06-15-preview/generated/azure_mgmt_event_grid/operations.rb'
  autoload :Topics,                                             '2017-06-15-preview/generated/azure_mgmt_event_grid/topics.rb'
  autoload :TopicTypes,                                         '2017-06-15-preview/generated/azure_mgmt_event_grid/topic_types.rb'
  autoload :EventGridManagementClient,                          '2017-06-15-preview/generated/azure_mgmt_event_grid/event_grid_management_client.rb'

  module Models
    autoload :OperationsListResult,                               '2017-06-15-preview/generated/azure_mgmt_event_grid/models/operations_list_result.rb'
    autoload :Operation,                                          '2017-06-15-preview/generated/azure_mgmt_event_grid/models/operation.rb'
    autoload :EventSubscriptionFilter,                            '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_filter.rb'
    autoload :EventSubscriptionDestination,                       '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_destination.rb'
    autoload :EventTypesListResult,                               '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_types_list_result.rb'
    autoload :EventSubscriptionUpdateParameters,                  '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_update_parameters.rb'
    autoload :EventSubscriptionsListResult,                       '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscriptions_list_result.rb'
    autoload :TopicTypesListResult,                               '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic_types_list_result.rb'
    autoload :Resource,                                           '2017-06-15-preview/generated/azure_mgmt_event_grid/models/resource.rb'
    autoload :TopicsListResult,                                   '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topics_list_result.rb'
    autoload :OperationInfo,                                      '2017-06-15-preview/generated/azure_mgmt_event_grid/models/operation_info.rb'
    autoload :TopicSharedAccessKeys,                              '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic_shared_access_keys.rb'
    autoload :EventSubscriptionFullUrl,                           '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_full_url.rb'
    autoload :TopicRegenerateKeyRequest,                          '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic_regenerate_key_request.rb'
    autoload :EventSubscription,                                  '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscription.rb'
    autoload :TrackedResource,                                    '2017-06-15-preview/generated/azure_mgmt_event_grid/models/tracked_resource.rb'
    autoload :Topic,                                              '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic.rb'
    autoload :EventType,                                          '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_type.rb'
    autoload :TopicTypeInfo,                                      '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic_type_info.rb'
    autoload :EventSubscriptionProvisioningState,                 '2017-06-15-preview/generated/azure_mgmt_event_grid/models/event_subscription_provisioning_state.rb'
    autoload :EndpointType,                                       '2017-06-15-preview/generated/azure_mgmt_event_grid/models/endpoint_type.rb'
    autoload :OperationOrigin,                                    '2017-06-15-preview/generated/azure_mgmt_event_grid/models/operation_origin.rb'
    autoload :TopicProvisioningState,                             '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic_provisioning_state.rb'
    autoload :ResourceRegionType,                                 '2017-06-15-preview/generated/azure_mgmt_event_grid/models/resource_region_type.rb'
    autoload :TopicTypeProvisioningState,                         '2017-06-15-preview/generated/azure_mgmt_event_grid/models/topic_type_provisioning_state.rb'
  end
end