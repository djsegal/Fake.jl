__precompile__()

module Fake

  using Pluck
  using Revise

  # include("address.jl")

  include("bank.jl")
  include("boolean.jl")
  include("business.jl")
  include("color.jl")
  include("commerce.jl")
  include("company.jl")

  # include("compass.jl")

  include("food.jl")
  include("hacker.jl")
  include("job.jl")
  include("music.jl")
  include("number.jl")
  include("programming_language.jl")
  include("science.jl")
  include("slack_emoji.jl")
  include("team.jl")

end
