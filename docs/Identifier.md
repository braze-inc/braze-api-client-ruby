# Braze::Identifier

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'braze_api_client'

Braze::Identifier.openapi_one_of
# =>
# [
#   :'IdentifierOneOf',
#   :'IdentifierOneOf1',
#   :'IdentifierOneOf2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'braze_api_client'

Braze::Identifier.build(data)
# => #<IdentifierOneOf:0x00007fdd4aab02a0>

Braze::Identifier.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `IdentifierOneOf`
- `IdentifierOneOf1`
- `IdentifierOneOf2`
- `nil` (if no type matches)

