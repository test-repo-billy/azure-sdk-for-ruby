# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  #
  # Use these APIs to manage Azure Websites resources through the Azure
  # Resource Manager. All task operations conform to the HTTP/1.1 protocol
  # specification and each operation returns an x-ms-request-id header that
  # can be used to obtain information about the request. You must make sure
  # that requests made to these resources are secure. For more information,
  # see <a
  # href="https://msdn.microsoft.com/en-us/library/azure/dn790557.aspx">Authenticating
  # Azure Resource Manager requests.</a>
  #
  class TopLevelDomains
    include Azure::ARM::Web::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the TopLevelDomains class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [WebSiteManagementClient] reference to the WebSiteManagementClient
    attr_reader :client

    #
    # Lists all top level domains supported for registration
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopLevelDomainCollection] which provide lazy access to pages of the
    # response.
    #
    def get_get_top_level_domains_as_lazy(custom_headers = nil)
      response = get_get_top_level_domains_async(custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_link|
          get_get_top_level_domains_next_async(next_link, custom_headers)
        end
        page
      end
    end

    #
    # Lists all top level domains supported for registration
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<TopLevelDomain>] operation results.
    #
    def get_get_top_level_domains(custom_headers = nil)
      first_page = get_get_top_level_domains_as_lazy(custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all top level domains supported for registration
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_get_top_level_domains_with_http_info(custom_headers = nil)
      get_get_top_level_domains_async(custom_headers).value!
    end

    #
    # Lists all top level domains supported for registration
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_get_top_level_domains_async(custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.DomainRegistration/topLevelDomains'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = TopLevelDomainCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets details of a top level domain
    #
    # @param name [String] Name of the top level domain
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopLevelDomain] operation results.
    #
    def get_top_level_domain(name, custom_headers = nil)
      response = get_top_level_domain_async(name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets details of a top level domain
    #
    # @param name [String] Name of the top level domain
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_top_level_domain_with_http_info(name, custom_headers = nil)
      get_top_level_domain_async(name, custom_headers).value!
    end

    #
    # Gets details of a top level domain
    #
    # @param name [String] Name of the top level domain
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_top_level_domain_async(name, custom_headers = nil)
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.DomainRegistration/topLevelDomains/{name}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'name' => name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = TopLevelDomain.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param name [String] Name of the top level domain
    # @param agreement_option [TopLevelDomainAgreementOption] Domain agreement
    # options
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TldLegalAgreementCollection] which provide lazy access to pages of
    # the response.
    #
    def list_top_level_domain_agreements_as_lazy(name, agreement_option, custom_headers = nil)
      response = list_top_level_domain_agreements_async(name, agreement_option, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_link|
          list_top_level_domain_agreements_next_async(next_link, custom_headers)
        end
        page
      end
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param name [String] Name of the top level domain
    # @param agreement_option [TopLevelDomainAgreementOption] Domain agreement
    # options
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<TldLegalAgreement>] operation results.
    #
    def list_top_level_domain_agreements(name, agreement_option, custom_headers = nil)
      first_page = list_top_level_domain_agreements_as_lazy(name, agreement_option, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param name [String] Name of the top level domain
    # @param agreement_option [TopLevelDomainAgreementOption] Domain agreement
    # options
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_top_level_domain_agreements_with_http_info(name, agreement_option, custom_headers = nil)
      list_top_level_domain_agreements_async(name, agreement_option, custom_headers).value!
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param name [String] Name of the top level domain
    # @param agreement_option [TopLevelDomainAgreementOption] Domain agreement
    # options
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_top_level_domain_agreements_async(name, agreement_option, custom_headers = nil)
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'agreement_option is nil' if agreement_option.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = TopLevelDomainAgreementOption.mapper()
      request_content = @client.serialize(request_mapper,  agreement_option, 'agreement_option')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.DomainRegistration/topLevelDomains/{name}/listAgreements'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'name' => name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :post, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = TldLegalAgreementCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all top level domains supported for registration
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopLevelDomainCollection] operation results.
    #
    def get_get_top_level_domains_next(next_page_link, custom_headers = nil)
      response = get_get_top_level_domains_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all top level domains supported for registration
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_get_top_level_domains_next_with_http_info(next_page_link, custom_headers = nil)
      get_get_top_level_domains_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists all top level domains supported for registration
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_get_top_level_domains_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = TopLevelDomainCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TldLegalAgreementCollection] operation results.
    #
    def list_top_level_domain_agreements_next(next_page_link, custom_headers = nil)
      response = list_top_level_domain_agreements_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_top_level_domain_agreements_next_with_http_info(next_page_link, custom_headers = nil)
      list_top_level_domain_agreements_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists legal agreements that user needs to accept before purchasing domain
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_top_level_domain_agreements_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :post, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = TldLegalAgreementCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
