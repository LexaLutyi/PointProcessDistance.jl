using PointProcessDistance
using Test
using Distances

@testset "PointProcessDistance.jl" begin
    n = 100
    x = rand(2, n)
    dist = PeriodicEuclidean(ones(2))

    rs = 0.:0.01:sqrt(2) / 2
    k = K(rs, x; dist)
    d = D(rs, x, n - 1; dist)
    t = T(rs, x; dist)
    h = H(rs, x; dist)

end
