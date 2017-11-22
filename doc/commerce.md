# Fake.Commerce
```julia
Fake.Commerce.color() # => "lavender"

# Optional arguments max=3, fixed_amount=false
Fake.Commerce.department() # => "Grocery, Health & Beauty"
Fake.Commerce.department(5) # => "Grocery, Books, Health & Beauty"
Fake.Commerce.department(2, true) # => "Books & Tools"

Fake.Commerce.material() # => "Steel"

Fake.Commerce.product_name() # => "Practical Granite Shirt"

Fake.Commerce.price() # => 44.6

# Generate a random promotion code.
# Optional argument digits = 6 for number of random digits in suffix
Fake.Commerce.promotion_code() # => "AmazingDeal829102"
```
