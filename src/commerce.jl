module Commerce

  include("base.jl")

  include("number.jl")

  function color()
    fetch_yml("color.name")
  end

  function promotion_code(digits = 6)
    join([
      fetch_yml("commerce.promotion_code.adjective"),
      fetch_yml("commerce.promotion_code.noun"),
      Number.number(digits)
    ])
  end

  function department(cur_max = 3, fixed_amount = false)
    if fixed_amount
      cur_num = cur_max
    else
      cur_num = rand(1:cur_max)
    end

    cur_categories = categories(cur_num)

    ( cur_num > 1 ) && return merge_categories(cur_categories)

    first(cur_categories)
  end

  function product_name()
    "$(fetch_yml("commerce.product_name.adjective")) $(fetch_yml("commerce.product_name.material")) $(fetch_yml("commerce.product_name.product"))"
  end

  function material()
    fetch_yml("commerce.product_name.material")
  end

  function price(range=0:100.0, as_string=false)
    price = floor(rand_in_range(first(range), last(range))*100)/100.0
    if as_string
      price_parts = split(string(price), ".")
      price = price_parts[1] * "." * rpad(price_parts[end], 2, "0")
    end
    price
  end

  function categories(cur_num)
    cur_categories = []
    while length(cur_categories) < cur_num
      category = fetch_yml("commerce.department")
      ( !in(category, cur_categories) ) && ( push!(cur_categories, category) )
    end

    cur_categories
  end

  function merge_categories(categories)
    separator = fetch_yml("separator")
    comma_separated = join(categories[1:end-1], ", ")

    join([comma_separated, categories[end]], separator)
  end

end
