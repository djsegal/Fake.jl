module Name

  include("base.jl")

  function name()
    parse_yml("name.name")
  end

  function name_with_middle()
    parse_yml("name.name_with_middle")
  end

  function first_name()
    fetch_yml("name.first_name")
  end

  function last_name()
    fetch_yml("name.last_name")
  end

  function prefix()
    fetch_yml("name.prefix")
  end

  function suffix()
    fetch_yml("name.suffix")
  end

  # Generate a buzzword-laden job title
  # Wordlist from http://www.bullshitjob.com/title/
  function title()
    "$(fetch_yml("name.title.descriptor")) $(fetch_yml("name.title.level")) $(fetch_yml("name.title.job"))"
  end

  function initials(character_count=3)
    join((0...character_count).map { (65 + rand(26)).chr })
  end

  function job_titles()
    fetch_all("name.title.job")
  end

end
