=begin
#Braze

#Track users, send messages, export data, and more

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

# Common files
require 'braze_client/api_client'
require 'braze_client/api_error'
require 'braze_client/version'
require 'braze_client/configuration'

# Models
require 'braze_client/models/attributes'
require 'braze_client/models/attributes_array'
require 'braze_client/models/attributes_current_location'
require 'braze_client/models/attributes_facebook'
require 'braze_client/models/attributes_push_tokens'
require 'braze_client/models/attributes_twitter'
require 'braze_client/models/event'
require 'braze_client/models/events_array'
require 'braze_client/models/general_error'
require 'braze_client/models/identifier'
require 'braze_client/models/identifier_one_of'
require 'braze_client/models/identifier_one_of1'
require 'braze_client/models/identifier_one_of2'
require 'braze_client/models/users_track_request'
require 'braze_client/models/users_track_response'

# APIs
require 'braze_client/api/rest_api'

module BrazeClient
  class << self
    # Customize default settings for the SDK using block.
    #   BrazeClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
