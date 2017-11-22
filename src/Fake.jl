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

  include("job.jl")
  include("number.jl")

end
