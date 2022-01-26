# BrazeClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **time** | **Time** |  |  |
| **app_id** | **String** |  | [optional] |
| **properties** | **Object** |  | [optional] |
| **_update_existing_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'braze_api_client'

instance = BrazeClient::Event.new(
  name: null,
  time: null,
  app_id: null,
  properties: null,
  _update_existing_only: null
)
```

