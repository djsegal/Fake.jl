module ProgrammingLanguage

  include("base.jl")

  function name()
    fetch_yml("programming_language.name")
  end

  function creator()
    fetch_yml("programming_language.creator")
  end

end
