#=============================================
install and precompile required Julia packages
=============================================#

using Pkg

# --- installation ---

Pkg.add([
# fix important external libraries
    PackageSpec(name="Polyhedra", version="0.4.5"),
    PackageSpec(name="MAT", version="0.5.0"),
    PackageSpec(name="HybridSystems", version="0.1.4"),
    PackageSpec(name="TaylorModels", version="0.1.0"),
    PackageSpec(name="TaylorSeries", version="0.9.1"),

# additional packages for benchmarking and plotting
    PackageSpec(name="BenchmarkTools", version="0.4.2"),
    PackageSpec(name="Plots", version="0.24.0"),
    PackageSpec(name="GR", version="0.38.1"),
    PackageSpec(name="LaTeXStrings", version="1.0.3"),

# JuliaReach packages
    PackageSpec(name="MathematicalSystems", version="0.6.4"),
    PackageSpec(name="LazySets", version="1.10.0"),
    PackageSpec(url="https://github.com/JuliaReach/Reachability.jl",
                rev="cb7a0b32e8423ef103539cbda849fa1fff7af2ce"),
    PackageSpec(url="https://github.com/JuliaReach/SX.jl",
                rev="9f0f8bdb18add80df6a36fc80b6d23c0fae703fe")
])

# --- precompilation ---

import Reachability
import SX
import Polyhedra
import MAT
import BenchmarkTools
import Plots
import GR
import LaTeXStrings
