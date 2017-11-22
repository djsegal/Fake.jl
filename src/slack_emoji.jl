module SlackEmoji

  include("base.jl")

  function people()
    fetch_yml("slack_emoji.people")
  end

  function nature()
    fetch_yml("slack_emoji.nature")
  end

  function food_and_drink()
    fetch_yml("slack_emoji.food_and_drink")
  end

  function celebration()
    fetch_yml("slack_emoji.celebration")
  end

  function activity()
    fetch_yml("slack_emoji.activity")
  end

  function travel_and_places()
    fetch_yml("slack_emoji.travel_and_places")
  end

  function objects_and_symbols()
    fetch_yml("slack_emoji.objects_and_symbols")
  end

  function custom()
    fetch_yml("slack_emoji.custom")
  end

  function emoji()
    parse_yml("slack_emoji.emoji")
  end

end
