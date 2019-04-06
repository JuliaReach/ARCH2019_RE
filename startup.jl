# deactivate plot GUI, which is not available in Docker
ENV["GKSwstype"] = "100"

function main()
    categories = ["AFF", "NLN"]
    print("Which benchmark suite should we run? [")
    first = true
    for c in categories
        if first
            first = false
        else
            print(", ")
        end
        print(c)
    end
    println("]")
    terminate = false
    while !terminate
        input = readline(stdin)
        if input ∈ categories
            println("Running $input benchmarks...")
            terminate = true
            include("models/$input/ARCH-COMP_2019.jl")
        else
            println("Sorry, input $input is not allowed, please try again.")
        end
    end
end

main()
