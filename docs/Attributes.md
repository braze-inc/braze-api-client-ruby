# BrazeClient::Attributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **current_location** | [**AttributesCurrentLocation**](AttributesCurrentLocation.md) |  | [optional] |
| **date_of_first_session** | **Time** |  | [optional] |
| **date_of_last_session** | **Time** |  | [optional] |
| **dob** | **Date** |  | [optional] |
| **email** | **String** |  | [optional] |
| **email_subscribe** | **String** |  | [optional] |
| **email_open_tracking_disabled** | **Boolean** |  | [optional] |
| **email_click_tracking_disabled** | **Boolean** |  | [optional] |
| **facebook** | [**AttributesFacebook**](AttributesFacebook.md) |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **home_city** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **marked_email_as_spam_at** | **Time** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **push_subscribe** | **String** |  | [optional] |
| **push_tokens** | [**Array&lt;AttributesPushTokens&gt;**](AttributesPushTokens.md) |  | [optional] |
| **time_zone** | **String** |  | [optional] |
| **twitter** | [**AttributesTwitter**](AttributesTwitter.md) |  | [optional] |

## Example

```ruby
require 'braze_client'

instance = BrazeClient::Attributes.new(
  country: null,
  current_location: null,
  date_of_first_session: null,
  date_of_last_session: null,
  dob: null,
  email: null,
  email_subscribe: null,
  email_open_tracking_disabled: null,
  email_click_tracking_disabled: null,
  facebook: null,
  first_name: null,
  gender: null,
  home_city: null,
  language: null,
  last_name: null,
  marked_email_as_spam_at: null,
  phone: null,
  push_subscribe: null,
  push_tokens: null,
  time_zone: null,
  twitter: null
)
```

