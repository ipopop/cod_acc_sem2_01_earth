# Display the square root of a positive integer.
# Warning: Handle potential argument errors.
# Langage : Julia
# Exec Command in Shell : 'julia'
# and : julia> 'include("terre09.jl")'
# and : julia> 'sqrt_positive_int(4)' OR julia> 'sqrt_positive_int(-4)'
# 'ctrl+d' to exit julia>

function sqrt_positive_int(n::Int)
  if n < 0
      error("Input must be a positive integer")
  else
      return sqrt(n)
  end
end
