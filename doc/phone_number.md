# Fake.PhoneNumber

Phone numbers may be in any of the following formats:

  * 333-333-3333
  * (333) 333-3333
  * 1-333-333-3333
  * 333.333.3333
  * 333-333-3333
  * 333-333-3333 x3333
  * (333) 333-3333 x3333
  * 1-333-333-3333 x3333
  * 333.333.3333 x3333

(Don't let the example output below fool you - any format can be returned at random.)
```julia
Fake.PhoneNumber.phone_number() # => "397.693.1309"

Fake.PhoneNumber.cell_phone() # => "(186)285-7925"

# NOTE NOTE NOTE NOTE
# For the 'US only' methods below, first you must do the following:
Fake.Config.locale = 'en-US'

# US only
Fake.PhoneNumber.area_code() # => "201"

# US only
Fake.PhoneNumber.exchange_code() # => "208"

# Optional parameter: length=4
Fake.PhoneNumber.subscriber_number() # => "3873"

Fake.PhoneNumber.subscriber_number(2) # => "39"

Fake.PhoneNumber.extension() # => "3764"
```
