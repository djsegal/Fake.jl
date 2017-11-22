# Fake.Number
```julia
# Required parameter: digits
Fake.Number.number(10) #=> "1968353479"

# Required parameter: l_digits
Fake.Number.decimal(2) #=> "11.88"

Fake.Number.decimal(2, 3) #=> "18.843"

# Required parameters: mean, standard_deviation
Fake.Number.normal(50, 3.5) #=> 47.14669604069156

# Required parameter: digits
Fake.Number.hexadecimal(3) #=> "#E74"

Fake.Number.between(1, 10) #=> 7

Fake.Number.positive() #=> 235.59238499107653

Fake.Number.negative() #=> -4480.042585669558

Fake.Number.digit() #=> "1"
```
