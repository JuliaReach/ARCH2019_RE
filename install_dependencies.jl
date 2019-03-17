#=============================================
install and precompile required Julia packages
=============================================#

using Pkg

# installation
packages = [
    ("https://github.com/JuliaReach/Reachability.jl", "Reachability"),
    ("https://github.com/JuliaReach/SX.jl", "SX"),
    ("Polyhedra", "Polyhedra"),
    ("BenchmarkTools", "BenchmarkTools"),
    ("Plots", "Plots"),
    ("LaTeXStrings", "LaTeXStrings")
    ]
for (p1, p2) in packages
    if p1 == p2
        Pkg.add(p1)
    else
        Pkg.clone(p1)
    end
end
for (p1, p2) in packages
    Pkg.build(p2)
end

# enforce precompilation
import Reachability
import SX
import Polyhedra
import BenchmarkTools
import Plots
import LaTeXStrings
