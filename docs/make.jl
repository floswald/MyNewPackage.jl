using MyNewPackage
using Documenter

DocMeta.setdocmeta!(MyNewPackage, :DocTestSetup, :(using MyNewPackage); recursive=true)

makedocs(;
    modules=[MyNewPackage],
    authors="Florian Oswald <florian.oswald@gmail.com> and contributors",
    repo="https://github.com/floswald/MyNewPackage.jl/blob/{commit}{path}#{line}",
    sitename="MyNewPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://floswald.github.io/MyNewPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/floswald/MyNewPackage.jl",
    devbranch="main",
)
