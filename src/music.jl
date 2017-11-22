module Music

  include("base.jl")

  function key()
    pluck(music_keys()) * pluck(key_variants())
  end

  function chord()
    key() * pluck(chord_types())
  end

  function instrument()
    fetch_yml("music.instruments")
  end

  function music_keys()
    ["C", "D", "E", "F", "G", "A", "B"]
  end

  function key_variants()
    ["b", "#", ""]
  end

  function key_types()
    ["", "m"]
  end

  function chord_types()
    ["", "maj", "6", "maj7", "m", "m7", "-7", "7", "dom7", "dim", "dim7", "m7b5"]
  end

end
