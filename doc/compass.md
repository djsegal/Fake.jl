# Fake.Compass
```julia
# A random direction
Fake.Compass.direction() # => "southeast"
Fake.Compass.cardinal() # => "north"
Fake.Compass.ordinal() # => "northwest"
Fake.Compass.half_wind() # => "north-northwest"
Fake.Compass.quarter_wind() # => "north by west"

# Random abbreviation
Fake.Compass.abbreviation() # => "NEbN"
Fake.Compass.cardinal_abbreviation() # => "N"
Fake.Compass.ordinal_abbreviation() # => "SW"
Fake.Compass.half_wind_abbreviation() # => "NNE"
Fake.Compass.quarter_wind_abbreviation() # => "SWbS"

# Random azimuth
Fake.Compass.azimuth() # => "168.75"
Fake.Compass.cardinal_azimuth() # => "90"
Fake.Compass.ordinal_azimuth() # => "135"
Fake.Compass.half_wind_azimuth() # => 292.5"
Fake.Compass.quarter_wind_azimuth() # => "56.25"
```
