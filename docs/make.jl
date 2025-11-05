using Documenter

makedocs(sitename="BayesianArena.jl",
         remotes=nothing,
         pages=[
            "Homepage" => "index.md"
         ]
)

deploydocs(
    repo = "github.com/BayesianRL/BayesianArena.jl.git",
)