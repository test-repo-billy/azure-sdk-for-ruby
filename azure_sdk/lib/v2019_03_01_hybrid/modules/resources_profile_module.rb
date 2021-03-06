# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Profiles::V2019_03_01_Hybrid
  module Resources
    module Mgmt
      Operations = Azure::Resources::Mgmt::V2018_05_01::Operations
      Deployments = Azure::Resources::Mgmt::V2018_05_01::Deployments
      Providers = Azure::Resources::Mgmt::V2018_05_01::Providers
      Resources = Azure::Resources::Mgmt::V2018_05_01::Resources
      ResourceGroups = Azure::Resources::Mgmt::V2018_05_01::ResourceGroups
      Tags = Azure::Resources::Mgmt::V2018_05_01::Tags
      DeploymentOperations = Azure::Resources::Mgmt::V2018_05_01::DeploymentOperations

      module Models
        IdentityUserAssignedIdentitiesValue = Azure::Resources::Mgmt::V2018_05_01::Models::IdentityUserAssignedIdentitiesValue
        Identity = Azure::Resources::Mgmt::V2018_05_01::Models::Identity
        GenericResourceFilter = Azure::Resources::Mgmt::V2018_05_01::Models::GenericResourceFilter
        ResourceGroupFilter = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupFilter
        ParametersLink = Azure::Resources::Mgmt::V2018_05_01::Models::ParametersLink
        ResourceListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceListResult
        OnErrorDeployment = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeployment
        ResourceGroupProperties = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupProperties
        Deployment = Azure::Resources::Mgmt::V2018_05_01::Models::Deployment
        ResourceGroup = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroup
        ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
        ResourceGroupPatchable = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupPatchable
        AliasType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasType
        ResourceGroupListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupListResult
        Provider = Azure::Resources::Mgmt::V2018_05_01::Models::Provider
        ResourcesMoveInfo = Azure::Resources::Mgmt::V2018_05_01::Models::ResourcesMoveInfo
        Dependency = Azure::Resources::Mgmt::V2018_05_01::Models::Dependency
        ExportTemplateRequest = Azure::Resources::Mgmt::V2018_05_01::Models::ExportTemplateRequest
        DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentPropertiesExtended
        TagCount = Azure::Resources::Mgmt::V2018_05_01::Models::TagCount
        DeploymentExtended = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtended
        TagValue = Azure::Resources::Mgmt::V2018_05_01::Models::TagValue
        ProviderListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ProviderListResult
        TagDetails = Azure::Resources::Mgmt::V2018_05_01::Models::TagDetails
        Sku = Azure::Resources::Mgmt::V2018_05_01::Models::Sku
        TagsListResult = Azure::Resources::Mgmt::V2018_05_01::Models::TagsListResult
        TemplateLink = Azure::Resources::Mgmt::V2018_05_01::Models::TemplateLink
        TargetResource = Azure::Resources::Mgmt::V2018_05_01::Models::TargetResource
        DeploymentProperties = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentProperties
        HttpMessage = Azure::Resources::Mgmt::V2018_05_01::Models::HttpMessage
        AliasPathType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
        DeploymentOperationProperties = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationProperties
        BasicDependency = Azure::Resources::Mgmt::V2018_05_01::Models::BasicDependency
        DeploymentOperation = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperation
        DeploymentValidateResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentValidateResult
        DeploymentOperationsListResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationsListResult
        Plan = Azure::Resources::Mgmt::V2018_05_01::Models::Plan
        ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceProviderOperationDisplayProperties
        DebugSetting = Azure::Resources::Mgmt::V2018_05_01::Models::DebugSetting
        Resource = Azure::Resources::Mgmt::V2018_05_01::Models::Resource
        ProviderResourceType = Azure::Resources::Mgmt::V2018_05_01::Models::ProviderResourceType
        SubResource = Azure::Resources::Mgmt::V2018_05_01::Models::SubResource
        DeploymentListResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentListResult
        ResourceGroupExportResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupExportResult
        DeploymentExportResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExportResult
        OperationDisplay = Azure::Resources::Mgmt::V2018_05_01::Models::OperationDisplay
        DeploymentExtendedFilter = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtendedFilter
        Operation = Azure::Resources::Mgmt::V2018_05_01::Models::Operation
        OnErrorDeploymentExtended = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentExtended
        OperationListResult = Azure::Resources::Mgmt::V2018_05_01::Models::OperationListResult
        GenericResource = Azure::Resources::Mgmt::V2018_05_01::Models::GenericResource
        DeploymentMode = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentMode
        OnErrorDeploymentType = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentType
        ResourceIdentityType = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceIdentityType
      end

      class ResourcesManagementClass
        attr_reader :operations, :deployments, :providers, :resources, :resource_groups, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources::Mgmt::V2018_05_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @deployments = @client_0.deployments
          @providers = @client_0.providers
          @resources = @client_0.resources
          @resource_groups = @client_0.resource_groups
          @tags = @client_0.tags
          @deployment_operations = @client_0.deployment_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_03_01_Hybrid/Resources/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def identity_user_assigned_identities_value
            Azure::Resources::Mgmt::V2018_05_01::Models::IdentityUserAssignedIdentitiesValue
          end
          def identity
            Azure::Resources::Mgmt::V2018_05_01::Models::Identity
          end
          def generic_resource_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::GenericResourceFilter
          end
          def resource_group_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupFilter
          end
          def parameters_link
            Azure::Resources::Mgmt::V2018_05_01::Models::ParametersLink
          end
          def resource_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceListResult
          end
          def on_error_deployment
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeployment
          end
          def resource_group_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupProperties
          end
          def deployment
            Azure::Resources::Mgmt::V2018_05_01::Models::Deployment
          end
          def resource_group
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroup
          end
          def resource_management_error_with_details
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
          end
          def resource_group_patchable
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupPatchable
          end
          def alias_type
            Azure::Resources::Mgmt::V2018_05_01::Models::AliasType
          end
          def resource_group_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupListResult
          end
          def provider
            Azure::Resources::Mgmt::V2018_05_01::Models::Provider
          end
          def resources_move_info
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourcesMoveInfo
          end
          def dependency
            Azure::Resources::Mgmt::V2018_05_01::Models::Dependency
          end
          def export_template_request
            Azure::Resources::Mgmt::V2018_05_01::Models::ExportTemplateRequest
          end
          def deployment_properties_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentPropertiesExtended
          end
          def tag_count
            Azure::Resources::Mgmt::V2018_05_01::Models::TagCount
          end
          def deployment_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtended
          end
          def tag_value
            Azure::Resources::Mgmt::V2018_05_01::Models::TagValue
          end
          def provider_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ProviderListResult
          end
          def tag_details
            Azure::Resources::Mgmt::V2018_05_01::Models::TagDetails
          end
          def sku
            Azure::Resources::Mgmt::V2018_05_01::Models::Sku
          end
          def tags_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::TagsListResult
          end
          def template_link
            Azure::Resources::Mgmt::V2018_05_01::Models::TemplateLink
          end
          def target_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::TargetResource
          end
          def deployment_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentProperties
          end
          def http_message
            Azure::Resources::Mgmt::V2018_05_01::Models::HttpMessage
          end
          def alias_path_type
            Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
          end
          def deployment_operation_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationProperties
          end
          def basic_dependency
            Azure::Resources::Mgmt::V2018_05_01::Models::BasicDependency
          end
          def deployment_operation
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperation
          end
          def deployment_validate_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentValidateResult
          end
          def deployment_operations_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationsListResult
          end
          def plan
            Azure::Resources::Mgmt::V2018_05_01::Models::Plan
          end
          def resource_provider_operation_display_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceProviderOperationDisplayProperties
          end
          def debug_setting
            Azure::Resources::Mgmt::V2018_05_01::Models::DebugSetting
          end
          def resource
            Azure::Resources::Mgmt::V2018_05_01::Models::Resource
          end
          def provider_resource_type
            Azure::Resources::Mgmt::V2018_05_01::Models::ProviderResourceType
          end
          def sub_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::SubResource
          end
          def deployment_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentListResult
          end
          def resource_group_export_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupExportResult
          end
          def deployment_export_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExportResult
          end
          def operation_display
            Azure::Resources::Mgmt::V2018_05_01::Models::OperationDisplay
          end
          def deployment_extended_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtendedFilter
          end
          def operation
            Azure::Resources::Mgmt::V2018_05_01::Models::Operation
          end
          def on_error_deployment_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentExtended
          end
          def operation_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::OperationListResult
          end
          def generic_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::GenericResource
          end
          def deployment_mode
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentMode
          end
          def on_error_deployment_type
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentType
          end
          def resource_identity_type
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceIdentityType
          end
        end
      end
    end
  end
end
