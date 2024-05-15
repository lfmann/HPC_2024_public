module JuliaTutorial

using InteractiveUtils, BenchmarkTools

include("./dep/07_AdvancedTypes.jl")
include("./dep/08_solve_cubic.jl")

greet() = print("Hello World!")
greet2() = print("Hello Class")

export Order0, Order1, Order2, greet, greet2

export derivative, nth_derivative, nth_generated


end # module
