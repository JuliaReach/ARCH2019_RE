# ISS benchmark
println("###\nRunning Spacestation benchmark\n###")
include("SpaceStation/iss_benchmark.jl")

# Spacecraft Rendezvous benchmark
println("###\nRunning Spacecraft Rendezvous benchmark\n###")
include("Rendezvous/SpacecraftRendezvous_benchmark.jl")

# Building benchmark
println("###\nRunning Building benchmark\n###")
include("Building/building_benchmark.jl")

# Platooning benchmark
println("###\nRunning Platooning benchmark\n###")
include("Platooning/Platooning_benchmark.jl")

nothing
