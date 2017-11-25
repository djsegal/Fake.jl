__precompile__()

module Fake

  # using Pluck

  include("bank.jl")
  include("boolean.jl")
  include("business.jl")
  include("color.jl")
  include("commerce.jl")
  include("company.jl")

  include("food.jl")
  include("hacker.jl")
  include("job.jl")
  include("music.jl")
  include("number.jl")
  include("programming_language.jl")
  include("science.jl")
  include("slack_emoji.jl")
  include("team.jl")

  # todo: remove after pluck is registered

  export pluck, pluck!

  function _pluck(cur_array::AbstractArray, remove_item=false)
    cur_length = length(cur_array)
    ( iszero(cur_length) ) && throw(BoundsError())

    cur_index = rand(1:cur_length)
    cur_value = cur_array[cur_index]

    remove_item && deleteat!(cur_array, cur_index)

    cur_value
  end

  function pluck(cur_array::AbstractArray)
    _pluck(cur_array, false)
  end

  function pluck!(cur_array::AbstractArray)
    _pluck(cur_array, true)
  end

  function pluck(cur_iterator::Union{Base.KeyIterator, Base.ValueIterator})
    pluck(collect(cur_iterator))
  end

  # todo: remove after case is registered

  export upcase, downcase

  export spacecase

  export camelcase, pascalcase
  export snakecase, kebabcase

  upcase = uppercase
  downcase = lowercase

  function _purgecase(cur_string::AbstractString)
    cur_string = replace(cur_string, "-", " ")
    cur_string = replace(cur_string, "_", " ")
  end

  function _defaultcase(cur_string::AbstractString)
    cur_string = _purgecase(cur_string)

    cur_string = join(split(cur_string), " ")
    cur_string = downcase(cur_string)

    cur_string
  end

  function _delimcase(cur_string::AbstractString, cur_delim::AbstractString)
    replace(
      _defaultcase(cur_string),
      " ",
      cur_delim
    )
  end

  function spacecase(cur_string::AbstractString)
    _defaultcase(cur_string)
  end

  function pascalcase(cur_string::AbstractString)
    replace(
      titlecase(_defaultcase(cur_string)),
      " ",
      ""
    )
  end

  function camelcase(cur_string::AbstractString)
    lcfirst(pascalcase(cur_string))
  end

  function snakecase(cur_string::AbstractString)
    _delimcase(cur_string, "_")
  end

  function kebabcase(cur_string::AbstractString)
    _delimcase(cur_string, "-")
  end

end
