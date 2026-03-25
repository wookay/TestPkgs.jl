module test_pkgs_sessions_notebook

using Test
using Sessions

filepath = normpath(@__DIR__, "hello.jl")

# from Sessions/test/test_session.jl
nb = Notebook(; path=filepath)
c1 = add_cell!(nb, "x = 1")
save_notebook(nb)

ws = Workspace()
execute_cell!(ws, c1)
Sessions.save_session!(nb)

include("hello.jl")
@test x == 1

end # module test_pkgs_sessions_notebook
