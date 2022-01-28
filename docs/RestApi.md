# BrazeClient::RestApi

All URIs are relative to *https://rest.iad-01.braze.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_users**](RestApi.md#delete_users) | **POST** /users/delete |  |
| [**identify_users**](RestApi.md#identify_users) | **POST** /users/identify |  |
| [**new_user_aliases**](RestApi.md#new_user_aliases) | **POST** /users/alias/new |  |
| [**remove_external_ids**](RestApi.md#remove_external_ids) | **POST** /users/external_ids/remove |  |
| [**rename_external_ids**](RestApi.md#rename_external_ids) | **POST** /users/external_ids/rename |  |
| [**track_users**](RestApi.md#track_users) | **POST** /users/track |  |


## delete_users

> <UsersDeleteResponse> delete_users(body)



Delete any user profile by specifying a known user identifier

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
BrazeClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BrazeClient::RestApi.new
body = Object # Object | 

begin
  
  result = api_instance.delete_users(body)
  p result
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->delete_users: #{e}"
end
```

#### Using the delete_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersDeleteResponse>, Integer, Hash)> delete_users_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_users_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersDeleteResponse>
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->delete_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**UsersDeleteResponse**](UsersDeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## identify_users

> <UsersIdentifyResponse> identify_users(body)



Identify an unidentified (alias-only) user

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
BrazeClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BrazeClient::RestApi.new
body = Object # Object | 

begin
  
  result = api_instance.identify_users(body)
  p result
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->identify_users: #{e}"
end
```

#### Using the identify_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersIdentifyResponse>, Integer, Hash)> identify_users_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.identify_users_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersIdentifyResponse>
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->identify_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**UsersIdentifyResponse**](UsersIdentifyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## new_user_aliases

> <UsersAliasNewResponse> new_user_aliases(body)



Add new user aliases for existing identified users or create new unidentified users

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
BrazeClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BrazeClient::RestApi.new
body = Object # Object | 

begin
  
  result = api_instance.new_user_aliases(body)
  p result
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->new_user_aliases: #{e}"
end
```

#### Using the new_user_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersAliasNewResponse>, Integer, Hash)> new_user_aliases_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.new_user_aliases_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersAliasNewResponse>
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->new_user_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**UsersAliasNewResponse**](UsersAliasNewResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_external_ids

> <UsersExternalIdsRemoveResponse> remove_external_ids(body)



Remove your users' old deprecated external IDs. This endpoint completely removes the deprecated ID and cannot be undone.

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
BrazeClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BrazeClient::RestApi.new
body = Object # Object | 

begin
  
  result = api_instance.remove_external_ids(body)
  p result
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->remove_external_ids: #{e}"
end
```

#### Using the remove_external_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersExternalIdsRemoveResponse>, Integer, Hash)> remove_external_ids_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.remove_external_ids_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersExternalIdsRemoveResponse>
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->remove_external_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**UsersExternalIdsRemoveResponse**](UsersExternalIdsRemoveResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## rename_external_ids

> <UsersExternalIdsRenameResponse> rename_external_ids(body)



Set a new (primary) external_id for the user and deprecate their existing external_id

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
BrazeClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BrazeClient::RestApi.new
body = Object # Object | 

begin
  
  result = api_instance.rename_external_ids(body)
  p result
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->rename_external_ids: #{e}"
end
```

#### Using the rename_external_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersExternalIdsRenameResponse>, Integer, Hash)> rename_external_ids_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.rename_external_ids_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersExternalIdsRenameResponse>
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->rename_external_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**UsersExternalIdsRenameResponse**](UsersExternalIdsRenameResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## track_users

> <UsersTrackResponse> track_users(body)



Record custom events, purchases, and update user profile attributes

### Examples

```ruby
require 'time'
require 'braze_api_client'
# setup authorization
BrazeClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BrazeClient::RestApi.new
body = Object # Object | 

begin
  
  result = api_instance.track_users(body)
  p result
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->track_users: #{e}"
end
```

#### Using the track_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersTrackResponse>, Integer, Hash)> track_users_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.track_users_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersTrackResponse>
rescue BrazeClient::ApiError => e
  puts "Error when calling RestApi->track_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**UsersTrackResponse**](UsersTrackResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

