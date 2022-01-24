# Braze API Ruby Client

Track users, send messages, export data, and more

> :warning: **This library is in early development, subject to breaking changes, and may be discontinued.**

## Installation

Add the following line to your Gemfile:

```
gem "braze_client"
```

Followed by running:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install braze_client
```

## Configuration

Generate an [API key](https://www.braze.com/docs/api/api_key/) with permissions for the endpoints you need to call.

You can determine which API host to use based on your Braze dashboard URL:

|Instance|URL|API Host|
|---|---|---|
|US-01| `https://dashboard-01.braze.com` | `rest.iad-01.braze.com` |
|US-02| `https://dashboard-02.braze.com` | `rest.iad-02.braze.com` |
|US-03| `https://dashboard-03.braze.com` | `rest.iad-03.braze.com` |
|US-04| `https://dashboard-04.braze.com` | `rest.iad-04.braze.com` |
|US-05| `https://dashboard-05.braze.com` | `rest.iad-05.braze.com` |
|US-06| `https://dashboard-06.braze.com` | `rest.iad-06.braze.com` |
|US-08| `https://dashboard-08.braze.com` | `rest.iad-08.braze.com` |
|EU-01| `https://dashboard-01.braze.eu` | `rest.fra-01.braze.eu` |
|EU-02| `https://dashboard-02.braze.eu` | `rest.fra-02.braze.eu` |


```ruby
# Load the gem
require 'braze_client'

# Setup authorization
BrazeClient.configure do |config|
  config.access_token = 'YOUR_API_KEY'
  config.server_variables[:host] = 'rest.YOUR-REGION.braze.com'
end

```


## Endpoints
### Track users

You can use the `/users/track` [endpoint](https://www.braze.com/docs/api/endpoints/user_data/post_user_track/) to record custom events, purchases, and update user profile attributes. Provide up to 75 of each type in a single request.

```ruby
braze_api = BrazeClient::RestApi.new

begin
  result = braze_api.track_users({
    :events => [{
      :external_id => "user123",
      :app_id => "yourappid",
      :time => Time.now,
      :name => "watched_trailer",
    }],
    :attributes => [{
      :external_id => "user456",
      :first_name => "Alice",
      :favorite_color => "blue",
    }],
    :purchases => [
      :external_id => "user456",
      :app_id => "yourappid",
      :time => Time.now,
      :product_id => "product_name",
      :currency => "USD",
      :price => 12.12,
      :quantity => 2,
      :properties => {
        :color => "blue",
      }
    ]
  })
  p result
rescue BrazeClient::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

### Delete users
```ruby
braze_api = BrazeClient::RestApi.new

begin
  result = braze_api.delete_users({
    # use any or all of these 3 identifier types
    :external_ids => ["user1", "user2"],
    :user_aliases => ["alias123", "alias456"],
    :braze_ids => ["braze_identifier1", "braze_identifier2"],
  })
  p result
rescue BrazeClient::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

### Create new user aliases
```ruby
braze_api = BrazeClient::RestApi.new

begin
  result = braze_api.new_user_aliases({
    :user_aliases => [{
      :external_id => "user123", # optional
      :alias_name => "c123",
      :alias_label => "customer_id",
    }]
  })
  p result
rescue BrazeClient::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

### Identify users
```ruby
braze_api = BrazeClient::RestApi.new

begin
  result = braze_api.identify_users({
    :aliases_to_identify => [{
      :external_id => "user123",
      :user_alias => {
        :alias_name => "c123",
        :alias_label => "customer_id",
      }
    }],
  })
  p result
rescue BrazeClient::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

### Rename external IDs
```ruby
braze_api = BrazeClient::RestApi.new

begin
  result = braze_api.rename_exernal_ids({
    :external_id_renames => [{
      :current_external_id => "user123",
      :new_external_id => "u123",
    }],
  })
  p result
rescue BrazeClient::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

### Remove external IDs
```ruby
braze_api = BrazeClient::RestApi.new

begin
  result = braze_api.remove_exernal_ids({
    :external_ids => ["user123", "user456"],
  })
  p result
rescue BrazeClient::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *http://https:/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BrazeClient::RestApi* | [**delete_users**](docs/RestApi.md#delete_users) | **POST** /users/delete | 
*BrazeClient::RestApi* | [**identify_users**](docs/RestApi.md#identify_users) | **POST** /users/identify | 
*BrazeClient::RestApi* | [**new_user_aliases**](docs/RestApi.md#new_user_aliases) | **POST** /users/alias/new | 
*BrazeClient::RestApi* | [**remove_external_ids**](docs/RestApi.md#remove_external_ids) | **POST** /users/external_ids/remove | 
*BrazeClient::RestApi* | [**rename_external_ids**](docs/RestApi.md#rename_external_ids) | **POST** /users/external_ids/rename | 
*BrazeClient::RestApi* | [**track_users**](docs/RestApi.md#track_users) | **POST** /users/track | 


## Contributing

This library is automatically generated. To make changes, please see [braze-api-client-codegen](https://github.com/braze-inc/braze-api-client-codegen)

- API version: 0.1.0
- Package version: 0.1.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Legal

Customer acknowledges and agrees that this software is being provided at no charge by Braze for Customer's use in connection with the Braze Services and that this software is separate from, and not part of, the Braze Services.  In addition, THIS SOFTWARE IS PROVIDED BY BRAZE "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL BRAZE BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.