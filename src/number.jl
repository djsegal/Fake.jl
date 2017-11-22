module Number

  include("base.jl")

  function number(digits=10)
    num = ""
    if digits > 1
      num = non_zero_digit()
      digits -= 1
    end
    num * leading_zero_number(digits)
  end

  function leading_zero_number(digits=10)
    join(map(x -> digit(), 1:digits))
  end

  function decimal_part(digits=10)
    num = ""
    if digits > 1
      num = non_zero_digit()
      digits -= 1
    end
    leading_zero_number(digits) * num
  end

  function decimal(l_digits=5, r_digits=2)
    l_d = number(l_digits)
    r_d = decimal_part(r_digits)
    "$(l_d).$(r_d)"
  end

  function non_zero_digit()
    string(rand(1:9))
  end

  function digit()
    string(rand(0:9))
  end

  function hexadecimal(digits=6)
    "#$(join(map(x -> pluck(hex_characters), 1:digits)))"
  end

  function normal(mean=1, standard_deviation=1)
    theta = 2 * pi * rand()
    rho = sqrt(-2 * log(1 - rand()))
    scale = standard_deviation * rho
    mean + scale * cos(theta)
  end

  function between(from = 1.00, to = 5000.00)
    rand_in_range(from, to)
  end

  function positive(from = 1.00, to = 5000.00)
    random_number = between(from, to)
    +abs(random_number)
  end

  function negative(from = -5000.00, to = -1.00)
    random_number = between(from, to)
    -abs(random_number)
  end

end
