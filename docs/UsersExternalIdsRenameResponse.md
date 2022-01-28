# BrazeClient::UsersExternalIdsRenameResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **rename_errors** | **Array&lt;Object&gt;** |  | [optional] |
| **external_ids** | [**Array&lt;UsersExternalIdsRenameResponseExternalIds&gt;**](UsersExternalIdsRenameResponseExternalIds.md) |  | [optional] |

## Example

```ruby
require 'braze_api_client'

instance = BrazeClient::UsersExternalIdsRenameResponse.new(
  message: null,
  rename_errors: null,
  external_ids: null
)
```

