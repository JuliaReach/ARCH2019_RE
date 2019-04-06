#=============================================
install and precompile required Julia packages
=============================================#

# --- installation ---

# install released packages with their exact versions
import Pkg
Pkg.activate(@__DIR__)
Pkg.instantiate()

# install unreleased packages
Pkg.add([
    PackageSpec(url="https://github.com/JuliaReach/Reachability.jl",
                rev="cb7a0b32e8423ef103539cbda849fa1fff7af2ce"),
    PackageSpec(url="https://github.com/JuliaReach/SX.jl",
                rev="9f0f8bdb18add80df6a36fc80b6d23c0fae703fe")
])

# --- precompilation ---

import Reachability
import SX
import Polyhedra
import Optim
import MAT
import BenchmarkTools
import Plots
import GR
import LaTeXStrings
