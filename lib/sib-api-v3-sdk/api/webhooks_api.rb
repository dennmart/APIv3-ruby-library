=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module SibApiV3Sdk
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a webhook
    # @param create_webhook [CreateWebhook] Values to create a webhook
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_webhook(create_webhook, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(create_webhook, opts)
      data
    end

    # Create a webhook
    # @param create_webhook [CreateWebhook] Values to create a webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Integer, Hash)>] CreateModel data, response status code and response headers
    def create_webhook_with_http_info(create_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhook ...'
      end
      # verify the required parameter 'create_webhook' is set
      if @api_client.config.client_side_validation && create_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'create_webhook' when calling WebhooksApi.create_webhook"
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_webhook) 

      # return_type
      return_type = opts[:return_type] || 'CreateModel' 

      # auth_names
      auth_names = opts[:auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a webhook
    # @param webhook_id [Integer] Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook(webhook_id, opts = {})
      delete_webhook_with_http_info(webhook_id, opts)
      nil
    end

    # Delete a webhook
    # @param webhook_id [Integer] Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.delete_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook details
    # @param webhook_id [Integer] Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [GetWebhook]
    def get_webhook(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Get a webhook details
    # @param webhook_id [Integer] Id of the webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetWebhook, Integer, Hash)>] GetWebhook data, response status code and response headers
    def get_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GetWebhook' 

      # auth_names
      auth_names = opts[:auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter on webhook type (default to 'transactional')
    # @return [GetWebhooks]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # Get all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter on webhook type
    # @return [Array<(GetWebhooks, Integer, Hash)>] GetWebhooks data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhooks ...'
      end
      allowable_values = ["marketing", "transactional"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GetWebhooks' 

      # auth_names
      auth_names = opts[:auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook
    # @param webhook_id [Integer] Id of the webhook
    # @param update_webhook [UpdateWebhook] Values to update a webhook
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_webhook(webhook_id, update_webhook, opts = {})
      update_webhook_with_http_info(webhook_id, update_webhook, opts)
      nil
    end

    # Update a webhook
    # @param webhook_id [Integer] Id of the webhook
    # @param update_webhook [UpdateWebhook] Values to update a webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_webhook_with_http_info(webhook_id, update_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.update_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'update_webhook' is set
      if @api_client.config.client_side_validation && update_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'update_webhook' when calling WebhooksApi.update_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(update_webhook) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['api-key', 'partner-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
