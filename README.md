# Braze API Ruby Client

Track users, send messages, export data, and more

> :warning: **This library is in early development, subject to breaking changes, and may be discontinued.**

## Installation

### Build gem

To build the Ruby code into a gem:

```shell
gem build braze_api_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./braze_api_client-1.0.0.gem
```

(for development, run `gem install --dev ./braze_api_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'braze_api_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'braze_api_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
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
require 'braze_api_client'

# Setup authorization
Braze.configure do |config|
  config.access_token = 'YOUR_API_KEY'
  config.host = 'rest.YOUR-REGION.braze.com'
end

api_instance = Braze::RestApi.new
users_track_request = Braze::UsersTrackRequest.new({attributes: [Braze::Event.new({name: 'name_example', time: Time.now})]}) # UsersTrackRequest | 

begin
  result = api_instance.users_track(users_track_request)
  p result
rescue Braze::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end

```

## Users Track

You can use the `/users/track` [endpoint](https://www.braze.com/docs/api/endpoints/user_data/post_user_track/) to record custom events, purchases, and update user profile attributes.

```ruby
braze_api = Braze::RestApi.new

begin
  result = braze_api.users_track({
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
rescue Braze::ApiError => e
  puts "Exception when calling RestApi->users_track: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://rest.iad-01.braze.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Braze::RestApi* | [**users_track**](docs/RestApi.md#users_track) | **POST** /users/track | 


## Contributing

This library is automatically generated. To make changes, please see [braze-api-client-codegen](https://github.com/braze-inc/braze-api-client-codegen)

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
