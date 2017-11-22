module Science

  include("base.jl")

  function element()
    fetch_yml("science.element")
  end

  function scientist()
    fetch_yml("science.scientist")
  end

end
