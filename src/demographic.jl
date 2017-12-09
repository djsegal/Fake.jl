module Demographic

  include("base.jl")

  function race()
    fetch_yml("demographic.race")
  end

  function educational_attainment()
    fetch_yml("demographic.educational_attainment")
  end

  function demonym()
    fetch_yml("demographic.demonym")
  end

  function marital_status()
    fetch_yml("demographic.marital_status")
  end

  function sex()
    fetch_yml("demographic.sex")
  end

  function height(unit = :metric)
    case unit
    when :imperial
      inches = rand_in_range(57, 86)
      return "$(inches / 12) ft, $(inches % 12) in"
    when :metric
      return rand_in_range(1.45, 2.13).round(2).to_s
    end
  end

end
