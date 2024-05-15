using Enzyme, StatsBase

f1(x) = x[1]^2
gradient(Reverse, f1, [3.0])


f2(x) = x[1]*x[2]
gradient(Reverse, f2, [2.0, 3.0])


rosenbrock(x) = (1.0 - x[1])^2 + 100.0 * (x[2] - x[1]^2)^2
gradient(Reverse, rosenbrock, [2.0,3.0])


f3(x) = [x[2] - x[1], x[1]^2]
jacobian(Reverse, f3, [2.0,3.0], Val(2))


function f4(x)
    y1 = x[1]
    y2 = exp(x[2])
    y3 = sum((y1^i-y2)/log(x[3]) for i=2:3)
    A = zeros(4,4)
    for i=1:4, j=1:4
        A[i,j] = y1+y2^i+y3^j
    end

    return [mean([y1,y2,y3]), y1/y2, mean(A)]
end
jacobian(Reverse, f4, [1.0,2.0,3.0], Val(3))

