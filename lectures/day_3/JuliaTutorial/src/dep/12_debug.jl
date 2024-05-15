function debug(N::Int)
    s = Vector{Float64}(undef, N)
    for n = 1:N
        s[n] = rand()
    end
    S = sum(s) 
    return S/N
end

debug(100)