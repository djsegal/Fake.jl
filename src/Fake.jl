__precompile__()

module Fake

  using Pluck
  using Revise

  include("bank.jl")
  include("boolean.jl")
  include("business.jl")
  include("color.jl")
  include("commerce.jl")
  include("company.jl")

  include("hacker.jl")
  include("job.jl")
  include("number.jl")
  include("programming_language.jl")
  include("team.jl")

end
