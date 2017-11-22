module Boolean

  include("base.jl")

  function boolean(true_ratio=0.5)
    rand() < true_ratio
  end

end
