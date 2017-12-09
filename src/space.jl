module Space

  include("base.jl")

  function planet()
    fetch_yml("space.planet")
  end

  function moon()
    fetch_yml("space.moon")
  end

  function galaxy()
    fetch_yml("space.galaxy")
  end

  function nebula()
    fetch_yml("space.nebula")
  end

  function star_cluster()
    fetch_yml("space.star_cluster")
  end

  function constellation()
    fetch_yml("space.constellation")
  end

  function star()
    fetch_yml("space.star")
  end

  function agency()
    fetch_yml("space.agency")
  end

  function agency_abv()
    fetch_yml("space.agency_abv")
  end

  function nasa_space_craft()
    fetch_yml("space.nasa_space_craft")
  end

  function company()
    fetch_yml("space.company")
  end

  function distance_measurement()
    rand(10:100).to_s + " " + fetch_yml("space.distance_measurement")
  end

  function meteorite()
    fetch_yml("space.meteorite")
  end

end
