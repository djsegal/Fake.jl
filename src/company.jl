module Company

  include("base.jl")

  function name()
    parse_yml("company.name")
  end

  function suffix()
    fetch_yml("company.suffix")
  end

  function industry()
    fetch_yml("company.industry")
  end

  function catch_phrase()
    ucfirst(join(map(x -> buzzword(), 1:rand(2:7)), " ")) * "."
  end

  function buzzword()
    pluck(translate("fake.company.buzzwords"))
  end

  function profession()
    fetch_yml("company.profession")
  end

end
