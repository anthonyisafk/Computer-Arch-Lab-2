# Plots graphs containing general info on all the simulations,
# and benchmarks, using PlotlyJS.

using DataFrames, CSV
using PlotlyJS, Plots
plotlyjs()


specbzip = DataFrame(CSV.File("specbzip_results.txt"));
spechmmer = DataFrame(CSV.File("spechmmer_results.txt"));
specsjeng = DataFrame(CSV.File("specsjeng_results.txt"));
speclibm = DataFrame(CSV.File("speclibm_results.txt"));
specmcf = DataFrame(CSV.File("specmcf_results.txt"));

results = [specbzip, specmcf, specsjeng, specsjeng, speclibm];
benchmarks = ["specbzip", "specmcf", "specsjeng", "spechmmer", "speclibm"];

# ---------- PLOTS FOR ALL SIMULATIONS ---------- #

for i = 1:5
    p1 = PlotlyJS.plot(
        results[i][!, 2],
        marker_symbol = "circle",
        marker_color = "lightseagreen",
        marker_size = 8,
        line_color = "lightseagreen",
        line_dash = "dot",
        name = "Simulation sec.",
    );

    p2 = PlotlyJS.plot(
        results[i][!, 3],
        marker_symbol = "circle",
        marker_color = "mediumslateblue",
        marker_size = 8,
        linecolor = "mediumslateblue",
        line_dash = "dot",
        name = "CPI",
    );

    p3 = PlotlyJS.plot(
        results[i][!, 6],
        marker_symbol = "x",
        marker_size = 8,
        marker_color = "crimson",
        line_color = "crimson",
        line_dash = "dot",
        name = "Total discarded operations",
    );

    p41 = PlotlyJS.scatter(
        y = results[i][!, 10],
        x = 1:13,
        marker_symbol = "circle",
        marker_color = "royalblue",
        marker_size = 8,
        line_color = "royalblue",
        line_dash = "dot",
        name = "L2 accesses",
    );

    p42 = PlotlyJS.scatter(
        y = results[i][!, 11],
        x = 1:13,
        marker_symbol = "circle",
        marker_color = "rebeccapurple",
        marker_size = 8,
        line_color = "rebeccapurple",
        line_dash = "dash",
        name = "L2 block replacements",
    );

    p4 = PlotlyJS.plot(
        [p41, p42]
    );

    p = [p1 p2; p3 p4]
    p.plot.layout["title"] = benchmarks[i];
    PlotlyJS.savefig(p, "../output/general/" * benchmarks[i] * "_general.jpeg",
        width = 872, height = 654);
end

# ---------- PLOT ROUND 1 GENERAL CPI AND SIM. SECS ---------- #

sim_secs = Vector{Float64}(undef, 5);
cpis = Vector{Float64}(undef, 5);

for i = 1:5
    sim_secs[i] = results[i][1, 2];
    cpis[i] = results[i][1, 3];
end

ri1 = PlotlyJS.scatter(
    y = sim_secs,
    x = benchmarks,
    marker_symbol = "circle",
    marker_size = 8,
    marker_color = "indigo",
    line_dash = "dash",
    line_color = "indigo",
    name = "sim. seconds",
);

ri2 = PlotlyJS.scatter(
    y = cpis,
    x = benchmarks,
    marker_symbol = "circle",
    marker_size = 8,
    marker_color = "darkorchid",
    line_dash = "dot",
    line_color = "darkorchid",
    name = "CPI",
);

ri = PlotlyJS.plot([ri1, ri2]);
ri.plot.layout["title"] = "Info on Round 1 simulations";
PlotlyJS.savefig(ri, "../output/round1/info.jpeg", width = 872, height = 654);

# ---------- PLOT ROUND 1 MISS RATES ---------- #

l1d_misses = Vector{Float64}(undef, 5);
l1i_misses = Vector{Float64}(undef, 5);
l2_misses = Vector{Float64}(undef, 5);

for i = 1:5
    l1d_misses[i] = results[i][1, 7];
    l1i_misses[i] = results[i][1, 8];
    l2_misses[i] = results[i][1, 9];
end

rm1 = PlotlyJS.scatter(
    y = l1d_misses,
    x = benchmarks,
    marker_symbol = "x",
    marker_color = "orangered",
    marker_size = 8,
    line_dash = "dash",
    line_color = "orangered",
    name = "L1D"
);

rm2 = PlotlyJS.scatter(
    y = l1i_misses,
    x = benchmarks,
    marker_symbol = "x",
    marker_color = "indianred",
    marker_size = 8,
    line_dash = "dash",
    line_color = "indianred",
    name = "L1I"
);

rm3 = PlotlyJS.scatter(
    y = l2_misses,
    x = benchmarks,
    marker_symbol = "x",
    marker_color = "firebrick",
    marker_size = 8,
    line_dash = "dash",
    line_color = "firebrick",
    name = "L2"
);

rm = PlotlyJS.plot([rm1, rm2, rm3]);
rm.plot.layout["title"] = "Round 1 miss rates";
PlotlyJS.savefig(rm, "../output/round1/miss_rates.jpeg", width = 872, height = 654);
