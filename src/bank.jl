module Bank

  include("base.jl")

  letter_code_characters = []
  append!(letter_code_characters, map(x -> string(x), 'A':'Z'))

  function name()
    fetch_yml("bank.name")
  end

  function swift_bic()
    fetch_yml("bank.swift_bic")
  end

  function iban(country_code = "GB")
    join([
      uppercase(country_code),
      rand(0:9, 2)...,
      iban_range(country_code, "letter_code")...,
      iban_range(country_code, "digits")...
    ])
  end

  function iban_range(country_code, number_type)
    array_length = iban_length(country_code, number_type)
    if number_type == "letter_code"
      return map(x -> pluck(letter_code_characters), 1:array_length)
    elseif number_type == "digits"
      return map(x -> pluck(0:9), 1:array_length)
    end
    error("Invalid number_type in iban_range.")
  end

  function iban_length(country_code, number_type)
    parse(Int,fetch_yml("bank.iban_details.$(lowercase(country_code)).$(number_type)"))
  end

end
