module Food

  include("base.jl")

  function dish()
    fetch_yml("food.dish")
  end

  function ingredient()
    fetch_yml("food.ingredients")
  end

  function spice()
    fetch_yml("food.spices")
  end

  function measurement()
    fetch_yml("food.measurement_sizes") * " " * fetch_yml("food.measurements")
  end

  function metric_measurement()
    fetch_yml("food.metric_measurements")
  end

end
