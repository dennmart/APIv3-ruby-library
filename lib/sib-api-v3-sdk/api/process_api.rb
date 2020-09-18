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
  class ProcessApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return the informations for a process
    # @param process_id [Integer] Id of the process
    # @param [Hash] opts the optional parameters
    # @return [GetProcess]
    def get_process(process_id, opts = {})
      data, _status_code, _headers = get_process_with_http_info(process_id, opts)
      data
    end

    # Return the informations for a process
    # @param process_id [Integer] Id of the process
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetProcess, Integer, Hash)>] GetProcess data, response status code and response headers
    def get_process_with_http_info(process_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcessApi.get_process ...'
      end
      # verify the required parameter 'process_id' is set
      if @api_client.config.client_side_validation && process_id.nil?
        fail ArgumentError, "Missing the required parameter 'process_id' when calling ProcessApi.get_process"
      end
      # resource path
      local_var_path = '/processes/{processId}'.sub('{' + 'processId' + '}', CGI.escape(process_id.to_s))

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
      return_type = opts[:return_type] || 'GetProcess' 

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
        @api_client.config.logger.debug "API called: ProcessApi#get_process\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return all the processes for your account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number limitation for the result returned (default to 10)
    # @option opts [Integer] :offset Beginning point in the list to retrieve from. (default to 0)
    # @return [GetProcesses]
    def get_processes(opts = {})
      data, _status_code, _headers = get_processes_with_http_info(opts)
      data
    end

    # Return all the processes for your account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number limitation for the result returned
    # @option opts [Integer] :offset Beginning point in the list to retrieve from.
    # @return [Array<(GetProcesses, Integer, Hash)>] GetProcesses data, response status code and response headers
    def get_processes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProcessApi.get_processes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 50
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ProcessApi.get_processes, must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = '/processes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GetProcesses' 

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
        @api_client.config.logger.debug "API called: ProcessApi#get_processes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
