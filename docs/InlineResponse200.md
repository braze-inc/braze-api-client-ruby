# Braze::InlineResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **attributes_processed** | **Integer** |  | [optional] |
| **events_processed** | **Integer** |  | [optional] |
| **purchases_processed** | **Integer** |  | [optional] |

## Example

```ruby
require 'braze_api_client'

instance = Braze::InlineResponse200.new(
  message: null,
  attributes_processed: null,
  events_processed: null,
  purchases_processed: null
)
```

