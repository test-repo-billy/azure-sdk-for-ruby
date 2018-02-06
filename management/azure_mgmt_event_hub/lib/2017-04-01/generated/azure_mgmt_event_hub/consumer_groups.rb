# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2017_04_01
  #
  # Azure Event Hubs client
  #
  class ConsumerGroups
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ConsumerGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EventHubManagementClient] reference to the EventHubManagementClient
    attr_reader :client

    #
    # Creates or updates an Event Hubs consumer group as a nested resource within a
    # Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param parameters [ConsumerGroup] Parameters supplied to create or update a
    # consumer group resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerGroup] operation results.
    #
    def create_or_update(resource_group_name, namespace_name, event_hub_name, consumer_group_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates an Event Hubs consumer group as a nested resource within a
    # Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param parameters [ConsumerGroup] Parameters supplied to create or update a
    # consumer group resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, namespace_name, event_hub_name, consumer_group_name, parameters, custom_headers:nil)
      create_or_update_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates an Event Hubs consumer group as a nested resource within a
    # Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param parameters [ConsumerGroup] Parameters supplied to create or update a
    # consumer group resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'event_hub_name is nil' if event_hub_name.nil?
      fail ArgumentError, "'event_hub_name' should satisfy the constraint - 'MinLength': '1'" if !event_hub_name.nil? && event_hub_name.length < 1
      fail ArgumentError, 'consumer_group_name is nil' if consumer_group_name.nil?
      fail ArgumentError, "'consumer_group_name' should satisfy the constraint - 'MaxLength': '50'" if !consumer_group_name.nil? && consumer_group_name.length > 50
      fail ArgumentError, "'consumer_group_name' should satisfy the constraint - 'MinLength': '1'" if !consumer_group_name.nil? && consumer_group_name.length < 1
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/consumergroups/{consumerGroupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'eventHubName' => event_hub_name,'consumerGroupName' => consumer_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a consumer group from the specified Event Hub and resource group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:nil)
      response = delete_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a consumer group from the specified Event Hub and resource group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:nil)
      delete_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes a consumer group from the specified Event Hub and resource group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'event_hub_name is nil' if event_hub_name.nil?
      fail ArgumentError, "'event_hub_name' should satisfy the constraint - 'MinLength': '1'" if !event_hub_name.nil? && event_hub_name.length < 1
      fail ArgumentError, 'consumer_group_name is nil' if consumer_group_name.nil?
      fail ArgumentError, "'consumer_group_name' should satisfy the constraint - 'MaxLength': '50'" if !consumer_group_name.nil? && consumer_group_name.length > 50
      fail ArgumentError, "'consumer_group_name' should satisfy the constraint - 'MinLength': '1'" if !consumer_group_name.nil? && consumer_group_name.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/consumergroups/{consumerGroupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'eventHubName' => event_hub_name,'consumerGroupName' => consumer_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets a description for the specified consumer group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerGroup] operation results.
    #
    def get(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:nil)
      response = get_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a description for the specified consumer group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:nil)
      get_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a description for the specified consumer group.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param consumer_group_name [String] The consumer group name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, namespace_name, event_hub_name, consumer_group_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'event_hub_name is nil' if event_hub_name.nil?
      fail ArgumentError, "'event_hub_name' should satisfy the constraint - 'MinLength': '1'" if !event_hub_name.nil? && event_hub_name.length < 1
      fail ArgumentError, 'consumer_group_name is nil' if consumer_group_name.nil?
      fail ArgumentError, "'consumer_group_name' should satisfy the constraint - 'MaxLength': '50'" if !consumer_group_name.nil? && consumer_group_name.length > 50
      fail ArgumentError, "'consumer_group_name' should satisfy the constraint - 'MinLength': '1'" if !consumer_group_name.nil? && consumer_group_name.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/consumergroups/{consumerGroupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'eventHubName' => event_hub_name,'consumerGroupName' => consumer_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ConsumerGroup>] operation results.
    #
    def list_by_event_hub(resource_group_name, namespace_name, event_hub_name, custom_headers:nil)
      first_page = list_by_event_hub_as_lazy(resource_group_name, namespace_name, event_hub_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_event_hub_with_http_info(resource_group_name, namespace_name, event_hub_name, custom_headers:nil)
      list_by_event_hub_async(resource_group_name, namespace_name, event_hub_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_event_hub_async(resource_group_name, namespace_name, event_hub_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'event_hub_name is nil' if event_hub_name.nil?
      fail ArgumentError, "'event_hub_name' should satisfy the constraint - 'MinLength': '1'" if !event_hub_name.nil? && event_hub_name.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/eventhubs/{eventHubName}/consumergroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'eventHubName' => event_hub_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerGroupListResult] operation results.
    #
    def list_by_event_hub_next(next_page_link, custom_headers:nil)
      response = list_by_event_hub_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_event_hub_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_event_hub_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_event_hub_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all the consumer groups in a Namespace. An empty feed is returned if no
    # consumer group exists in the Namespace.
    #
    # @param resource_group_name [String] Name of the resource group within the
    # azure subscription.
    # @param namespace_name [String] The Namespace name
    # @param event_hub_name [String] The Event Hub name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ConsumerGroupListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_event_hub_as_lazy(resource_group_name, namespace_name, event_hub_name, custom_headers:nil)
      response = list_by_event_hub_async(resource_group_name, namespace_name, event_hub_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_event_hub_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end