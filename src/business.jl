module Business

  include("base.jl")

  function credit_card_number()
    fetch_yml("business.credit_card_numbers")
  end

  function credit_card_expiry_date()
    now() + Dates.Day(365 * rand(1:4))
  end

  function credit_card_type()
    fetch_yml("business.credit_card_types")
  end

end
