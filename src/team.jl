module Team

  include("base.jl")

  function name()
    titlecase(parse_yml("team.name"))
  end

  function creature()
    fetch_yml("team.creature")
  end

  function state()
    fetch_yml("address.state")
  end

  function mascot()
    fetch_yml("team.mascot")
  end

  function sport()
    fetch_yml("team.sport")
  end

end
