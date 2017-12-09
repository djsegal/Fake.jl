module Compass

  include("base.jl")

  function cardinal()
    fetch_yml("compass.cardinal.word")
  end

  function ordinal()
    fetch_yml("compass.ordinal.word")
  end

  function half_wind()
    fetch_yml("compass.half-wind.word")
  end

  function quarter_wind()
    fetch_yml("compass.quarter-wind.word")
  end

  function direction()
    parse_yml("compass.direction")
  end

  function abbreviation()
    parse_yml("compass.abbreviation")
  end

  function azimuth()
    parse_yml("compass.azimuth")
  end

  function cardinal_abbreviation()
    fetch_yml("compass.cardinal.abbreviation")
  end

  function ordinal_abbreviation()
    fetch_yml("compass.ordinal.abbreviation")
  end

  function half_wind_abbreviation()
    fetch_yml("compass.half-wind.abbreviation")
  end

  function quarter_wind_abbreviation()
    fetch_yml("compass.quarter-wind.abbreviation")
  end

  function cardinal_azimuth()
    fetch_yml("compass.cardinal.azimuth")
  end

  function ordinal_azimuth()
    fetch_yml("compass.ordinal.azimuth")
  end

  function half_wind_azimuth()
    fetch_yml("compass.half-wind.azimuth")
  end

  function quarter_wind_azimuth()
    fetch_yml("compass.quarter-wind.azimuth")
  end

end
