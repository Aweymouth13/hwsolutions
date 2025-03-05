# vars
t = -10:0.1:10
wfi = 1
w = 0:0.01:2

# meshgrid
T, W = meshgrid(t, w)

# stw
STW = (sin.((wfi .- W) .* T ./ 2) ./ ((wfi .- W) ./ 2)).^2

# plot mesh
using Plots
p = plot_surface(T, W, STW, xlabel="t", ylabel="ω", zlabel="sin²((ωfi-ω)t/2)/((ωfi-ω)/2)², ωfi=1", color=:viridis)
savefig("sinc_w_julia.png")
display(p)

# Animation
using Animation
anim = @animate for frame in 0:359
    angle = frame
    plot_surface(T, W, STW, xlabel="t", ylabel="ω", zlabel="sin²((ωfi-ω)t/2)/((ωfi-ω)/2)², ωfi=1", color=:viridis, 
                 camera = (angle, 30))
end

# Save gif
gif(anim, "spinning_sinc_julia.gif", fps=30)
