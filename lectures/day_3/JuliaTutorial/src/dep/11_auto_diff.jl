using Enzyme, Test

f1(x) = x^2
# Returns a tuple of active returns, which in this case is simply (2.0,)
@test first(autodiff(Reverse, f1, Active(1.0))[1]) ≈ 2.0


rosenbrock_inp(x) = (1.0 - x[1])^2 + 100.0 * (x[2] - x[1]^2)^2
x = [1.0, 2.0]
dx = [0.0, 0.0]
autodiff(Reverse, rosenbrock_inp, Active, Duplicated(x, dx))
dx