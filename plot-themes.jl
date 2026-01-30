set_theme!(; size=(600, 400),
    backgroundcolor=(:mistyrose, 0.1),
    fontsize=16,
    Axis=(;
        xlabel="x",
        ylabel="y",
        title="Title",
        xgridstyle=:dash,
        ygridstyle=:dash,
    ),
    Legend=(;
        backgroundcolor=(:grey, 0.1),
        framecolor=:orangered,
    ),
)

fig = Figure(; figure_padding=(10))
ax = Axis(fig[1, 1])

lines!(ax, 0.5:0.2:3pi, x -> cos(x) / x;
    linewidth=2, linestyle=:solid, label="cos(x)/x")

scatterlines!(ax, 0.5:0.2:3pi, x -> -cos(x) / x;
    linewidth=2, linestyle=:dash, label="-cos(x)/x")

axislegend("legend"; position=:rt)
fig
set_theme!()
update_theme!()