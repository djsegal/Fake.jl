module Job

  include("base.jl")

  function title()
    parse_yml("job.title")
  end

  function field()
    fetch_yml("job.field")
  end

  function key_skill()
    fetch_yml("job.key_skills")
  end

end
