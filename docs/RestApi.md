# Braze::RestApi

All URIs are relative to *https://elsa.braze.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_track**](RestApi.md#users_track) | **POST** /users/track |  |


## users_track

> <InlineResponse200> users_track(users_track_request)



Record custom events, purchases, and update user profile attributes

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
Braze.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Braze::RestApi.new
users_track_request = Braze::UsersTrackRequest.new({attributes: [Braze::Event.new({name: 'name_example', time: Time.now})]}) # UsersTrackRequest | 

begin
  
  result = api_instance.users_track(users_track_request)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->users_track: #{e}"
end
```

#### Using the users_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> users_track_with_http_info(users_track_request)

```ruby
begin
  
  data, status_code, headers = api_instance.users_track_with_http_info(users_track_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue Braze::ApiError => e
  puts "Error when calling RestApi->users_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users_track_request** | [**UsersTrackRequest**](UsersTrackRequest.md) |  |  |

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

