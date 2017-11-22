module Color

  include("base.jl")

  function hex_color()
    "#$(join(map(x -> pluck(hex_characters), 1:6)))"
  end

  function color_name()
    fetch_yml("color.name")
  end

  function single_rgb_color()
    pluck(0:255)
  end

  function rgb_color()
    map(x -> single_rgb_color(), 1:3)
  end

  # returns [hue, saturation, lightness]
  function hsl_color()
    [pluck(0:360), round(rand(), 2), round(rand(), 2)]
  end

  function hsla_color()
    push!(hsl_color(), round(rand(), 1))
  end

end
