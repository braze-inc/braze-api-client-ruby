=begin
#Braze

#Track users, send messages, export data, and more

The version of the OpenAPI document: 0.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module BrazeClient
  class RestApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete any user profile by specifying a known user identifier
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [UsersDeleteResponse]
    def delete_users(body, opts = {})
      data, _status_code, _headers = delete_users_with_http_info(body, opts)
      data
    end

    # Delete any user profile by specifying a known user identifier
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersDeleteResponse, Integer, Hash)>] UsersDeleteResponse data, response status code and response headers
    def delete_users_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestApi.delete_users ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestApi.delete_users"
      end
      # resource path
      local_var_path = '/users/delete'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UsersDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RestApi.delete_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestApi#delete_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Identify an unidentified (alias-only) user
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [UsersIdentifyResponse]
    def identify_users(body, opts = {})
      data, _status_code, _headers = identify_users_with_http_info(body, opts)
      data
    end

    # Identify an unidentified (alias-only) user
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersIdentifyResponse, Integer, Hash)>] UsersIdentifyResponse data, response status code and response headers
    def identify_users_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestApi.identify_users ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestApi.identify_users"
      end
      # resource path
      local_var_path = '/users/identify'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UsersIdentifyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RestApi.identify_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestApi#identify_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add new user aliases for existing identified users or create new unidentified users
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [UsersAliasNewResponse]
    def new_user_aliases(body, opts = {})
      data, _status_code, _headers = new_user_aliases_with_http_info(body, opts)
      data
    end

    # Add new user aliases for existing identified users or create new unidentified users
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersAliasNewResponse, Integer, Hash)>] UsersAliasNewResponse data, response status code and response headers
    def new_user_aliases_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestApi.new_user_aliases ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestApi.new_user_aliases"
      end
      # resource path
      local_var_path = '/users/alias/new'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UsersAliasNewResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RestApi.new_user_aliases",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestApi#new_user_aliases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove your users' old deprecated external IDs. This endpoint completely removes the deprecated ID and cannot be undone.
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [UsersExternalIdsRemoveResponse]
    def remove_external_ids(body, opts = {})
      data, _status_code, _headers = remove_external_ids_with_http_info(body, opts)
      data
    end

    # Remove your users&#39; old deprecated external IDs. This endpoint completely removes the deprecated ID and cannot be undone.
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersExternalIdsRemoveResponse, Integer, Hash)>] UsersExternalIdsRemoveResponse data, response status code and response headers
    def remove_external_ids_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestApi.remove_external_ids ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestApi.remove_external_ids"
      end
      # resource path
      local_var_path = '/users/external_ids/remove'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UsersExternalIdsRemoveResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RestApi.remove_external_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestApi#remove_external_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a new (primary) external_id for the user and deprecate their existing external_id
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [UsersExternalIdsRenameResponse]
    def rename_external_ids(body, opts = {})
      data, _status_code, _headers = rename_external_ids_with_http_info(body, opts)
      data
    end

    # Set a new (primary) external_id for the user and deprecate their existing external_id
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersExternalIdsRenameResponse, Integer, Hash)>] UsersExternalIdsRenameResponse data, response status code and response headers
    def rename_external_ids_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestApi.rename_external_ids ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestApi.rename_external_ids"
      end
      # resource path
      local_var_path = '/users/external_ids/rename'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UsersExternalIdsRenameResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RestApi.rename_external_ids",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestApi#rename_external_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Record custom events, purchases, and update user profile attributes
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [UsersTrackResponse]
    def track_users(body, opts = {})
      data, _status_code, _headers = track_users_with_http_info(body, opts)
      data
    end

    # Record custom events, purchases, and update user profile attributes
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsersTrackResponse, Integer, Hash)>] UsersTrackResponse data, response status code and response headers
    def track_users_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestApi.track_users ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestApi.track_users"
      end
      # resource path
      local_var_path = '/users/track'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UsersTrackResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RestApi.track_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestApi#track_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
