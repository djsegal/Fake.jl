# Fake.Bank
```julia
Fake.Bank.name() # => "ABN AMRO CORPORATE FINANCE LIMITED"

Fake.Bank.swift_bic() # => "AAFMGB21"

Fake.Bank.iban() # => "GB76DZJM33188515981979"

# Optional argument bank_country_code(EU only)
Fake.Bank.iban("be") # => "BE6375388567752043"
```
