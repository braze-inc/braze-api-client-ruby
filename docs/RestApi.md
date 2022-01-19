# Braze::RestApi

All URIs are relative to *https://rest.iad-01.braze.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**identify_user**](RestApi.md#identify_user) | **POST** /users/identify |  |
| [**new_user_alias**](RestApi.md#new_user_alias) | **POST** /users/alias/new |  |
| [**remove_external_id**](RestApi.md#remove_external_id) | **POST** /users/external_ids/remove |  |
| [**rename_external_id**](RestApi.md#rename_external_id) | **POST** /users/external_ids/rename |  |
| [**track_user**](RestApi.md#track_user) | **POST** /users/track |  |
| [**user_delete**](RestApi.md#user_delete) | **POST** /users/delete |  |


## identify_user

> Object identify_user(body)



Identify an unidentified (alias-only) user

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
body = Object # Object | 

begin
  
  result = api_instance.identify_user(body)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->identify_user: #{e}"
end
```

#### Using the identify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> identify_user_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.identify_user_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Braze::ApiError => e
  puts "Error when calling RestApi->identify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_user_alias

> Object new_user_alias(body)



Add new user aliases for existing identified users or create new unidentified users

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
body = Object # Object | 

begin
  
  result = api_instance.new_user_alias(body)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->new_user_alias: #{e}"
end
```

#### Using the new_user_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> new_user_alias_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.new_user_alias_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Braze::ApiError => e
  puts "Error when calling RestApi->new_user_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_external_id

> Object remove_external_id(body)



Remove your users' old deprecated external IDs. This endpoint completely removes the deprecated ID and cannot be undone.

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
body = Object # Object | 

begin
  
  result = api_instance.remove_external_id(body)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->remove_external_id: #{e}"
end
```

#### Using the remove_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> remove_external_id_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.remove_external_id_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Braze::ApiError => e
  puts "Error when calling RestApi->remove_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rename_external_id

> Object rename_external_id(body)



Set a new (primary) external_id for the user and deprecate their existing external_id

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
body = Object # Object | 

begin
  
  result = api_instance.rename_external_id(body)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->rename_external_id: #{e}"
end
```

#### Using the rename_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> rename_external_id_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.rename_external_id_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Braze::ApiError => e
  puts "Error when calling RestApi->rename_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## track_user

> <InlineResponse200> track_user(users_track_request)



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
  
  result = api_instance.track_user(users_track_request)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->track_user: #{e}"
end
```

#### Using the track_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineResponse200>, Integer, Hash)> track_user_with_http_info(users_track_request)

```ruby
begin
  
  data, status_code, headers = api_instance.track_user_with_http_info(users_track_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineResponse200>
rescue Braze::ApiError => e
  puts "Error when calling RestApi->track_user_with_http_info: #{e}"
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


## user_delete

> Object user_delete(body)



Delete any user profile by specifying a known user identifier

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
body = Object # Object | 

begin
  
  result = api_instance.user_delete(body)
  p result
rescue Braze::ApiError => e
  puts "Error when calling RestApi->user_delete: #{e}"
end
```

#### Using the user_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> user_delete_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.user_delete_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Braze::ApiError => e
  puts "Error when calling RestApi->user_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

