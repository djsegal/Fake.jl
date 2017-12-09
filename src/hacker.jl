#Port of http://shinytoylabs.com/jargon/
module Hacker

  include("base.jl")

  function say_something_smart()
    pluck(phrases())
  end

  function abbreviation()
    fetch_yml("hacker.abbreviation")
  end

  function adjective()
    fetch_yml("hacker.adjective")
  end

  function noun()
    fetch_yml("hacker.noun")
  end

  function verb()
    fetch_yml("hacker.verb")
  end

  function ingverb()
    fetch_yml("hacker.ingverb")
  end

  function phrases()
    [
      "If we $(verb()) the $(noun()), we can get to the $(abbreviation()) $(noun()) through the $(adjective()) $(abbreviation()) $(noun())!",
      "We need to $(verb()) the $(adjective()) $(abbreviation()) $(noun())!",
      "Try to $(verb()) the $(abbreviation()) $(noun()), maybe it will $(verb()) the $(adjective()) $(noun())!",
      "You can\'t $(verb()) the $(noun()) without $(ingverb()) the $(adjective()) $(abbreviation()) $(noun())!",
      "Use the $(adjective()) $(abbreviation()) $(noun()), then you can $(verb()) the $(adjective()) $(noun())!",
      "The $(abbreviation()) $(noun()) is down, $(verb()) the $(adjective()) $(noun()) so we can $(verb()) the $(abbreviation()) $(noun())!",
      "$(ucfirst(ingverb())) the $(noun()) won\'t do anything, we need to $(verb()) the $(adjective()) $(abbreviation()) $(noun())!",
      "I\'ll $(verb()) the $(adjective()) $(abbreviation()) $(noun()), that should $(noun()) the $(abbreviation()) $(noun())!"
    ]
  end

end
