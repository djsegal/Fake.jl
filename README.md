# Fake [![Build Status](https://travis-ci.org/djsegal/Fake.jl.svg?branch=master)](https://travis-ci.org/djsegal/Fake.jl) [![codecov.io](http://codecov.io/github/djsegal/Fake.jl/coverage.svg?branch=master)](http://codecov.io/github/djsegal/Fake.jl?branch=master)
This gem is a port of Rails's Faker gem that generates fake data.

### NOTE

* While Fake generates data at random, returned values are not guaranteed to be unique by default.
* This is the `master` branch of Fake and may contain changes that are not yet released.
  Please refer the README of your version for the available methods.
  List of all versions is [available here](https://github.com/djsegal/fake/releases).

Contents
--------

- [Installing](#installing)
- [Usage](#usage)
  - [Fake.Bank](doc/bank.md)
  - [Fake.Boolean](doc/boolean.md)
  - [Fake.Business](doc/business.md)
  - [Fake.Color](doc/color.md)
  - [Fake.Commerce](doc/commerce.md)
  - [Fake.Company](doc/company.md)
  - [Fake.Hacker](doc/hacker.md)
  - [Fake.Job](doc/job.md)
  - [Fake.Music](doc/music.md)
  - [Fake.Number](doc/number.md)
  - [Fake.ProgrammingLanguage](doc/programming_language.md)
  - [Fake.Science](doc/science.md)
  - [Fake.SlackEmoji](doc/slack_emoji.md)
  - [Fake.Team](doc/team.md)
- [Contributing](#contributing)
- [License](#license)

## Installing
```julia
Pkg.add("Fake")
```

## Usage
```julia
using Fake

Fake.Name.name() # => "Christophe Bartell"

Fake.Internet.email() # => "kirsten.greenholt@corkeryfisher.info"
```

## Contributing

See [CONTRIBUTING.md](https://github.com/djsegal/fake.jl/blob/master/CONTRIBUTING.md).

## License

This code is free to use under the terms of the MIT license.
