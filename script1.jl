using CairoMakie
CairoMakie.activate!()

fig = Figure(; figure_padding=(10), backgroundcolor=:snow2, size=(600, 400))
ax = Axis(fig[1, 1]; xlabel="x", ylabel="y", title="Title", xgridstyle=:dash, ygridstyle=:dash)

lines!(ax, 0.5:0.2:3pi, x -> cos(x) / x;
    linewidth=2, linestyle=:solid, label="cos(x)/x")

scatterlines!(ax, 0.5:0.2:3pi, x -> -cos(x) / x;
    linewidth=2, linestyle=:dash, label="-cos(x)/x")

axislegend("legend"; position=:rt)

fig

