module University

  include("base.jl")

  function name()
    parse_yml("university.name")
  end

  function prefix()
    fetch_yml("university.prefix")
  end

  function suffix()
    fetch_yml("university.suffix")
  end

  function greek_organization()
    organization = ""
    3.times do |e|
      organization = organization + pluck(greek_alphabet)
    end
    organization
  end

  function greek_alphabet()
    ["Α", "B", "Γ", "Δ", "E", "Z", "H", "Θ", "|", "K", "Λ", "M", "N", "Ξ",
     "O", "Π", "P", "Σ", "T", "Y", "Φ", "X", "Ψ", "Ω"]
  end
end
