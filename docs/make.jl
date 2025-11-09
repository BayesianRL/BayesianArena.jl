using Documenter, BayesianArena

makedocs(sitename="BayesianArena.jl",
         remotes=nothing,
         pages=[
            "Homepage" => "index.md",
            "API"=> "api.md"
         ]
)

deploydocs(
    repo = "github.com/BayesianRL/BayesianArena.jl.git",
)