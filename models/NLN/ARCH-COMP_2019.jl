# Van der Pol benchmark
println("###\nRunning Van der Pol benchmark\n###")
include("VanDerPol/vanderpol_benchmark.jl")

# Laub-Loomis benchmark
println("###\nRunning Laub-Loomis benchmark\n###")
include("LaubLoomis/laubloomis_benchmark.jl")

# Quadrotor benchmark
println("###\nRunning Quadrotor benchmark\n###")
include("Quadrotor/quadrotor_benchmark.jl")

nothing
