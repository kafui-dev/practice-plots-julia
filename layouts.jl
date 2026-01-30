function first_layout()
    x, y, z = randn(6), randn(6), randn(6)
    fig = Figure(size=(600, 400), backgroundcolor=:snow2)
    ax = Axis(fig[1, 1], backgroundcolor=:white)
    pltobj = scatter!(ax, x, y; color=z, label="scatters")
    lines!(ax, x, y; label="line")
    Legend(fig[2, 1:2], ax, "labels", orientation=:horizontal, tellheight=true)
    Colorbar(fig[1, 2], pltobj, label="colorbar", tellheight=true)
    fig
end

first_layout()

function first_layout_fixed()
    x, y, z = randn(6), randn(6), randn(6)
    fig = Figure(size=(600, 400), backgroundcolor=:black)
    ax = Axis(fig[1, 1], xgridcolor=(:snow4, 0.35), ygridcolor=(:snow4, 0.35))

    pltobj = scatter!(ax, x, y; color=z, label="scatters")

    lines!(ax, x, y; label=L"f(x) = \frac{2}{23} \text{  line}")
    Legend(fig[2, 1:2], ax, "Labels", orientation=:horizontal, titleposition=:left, color=(:snow4, 0.35))
    Colorbar(fig[1, 2], pltobj, label="colorbar", tellheight=true)

    # additional aesthetics
    Box(fig[1, 1, Right()], color=(:snow4, 0.35))
    Label(fig[1, 1, Right()], "protrusion", fontsize=18, rotation=pi / 2, padding=(5))

    colgap!(fig.layout, 5)
    rowgap!(fig.layout, 5)

    fig
end

set_theme!(theme_dark())

first_layout_fixed()