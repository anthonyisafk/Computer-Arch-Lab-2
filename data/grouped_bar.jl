using DataFrames, CSV
using Plots, StatsPlots

specbzip = DataFrame(CSV.File("specbzip_results.txt"));
spechmmer = DataFrame(CSV.File("spechmmer_results.txt"));
specsjeng = DataFrame(CSV.File("specsjeng_results.txt"));
speclibm = DataFrame(CSV.File("speclibm_results.txt"));
specmcf = DataFrame(CSV.File("specmcf_results.txt"));

results = [specbzip, specmcf, specsjeng, specsjeng, speclibm];
benchmarks = ["specbzip", "specmcf", "spechmmer", "specsjeng", "speclibm"];

groups = repeat(["L1D", "L1I", "L2"], inner = 10);
names = repeat(1:10, outer = 3);


for i = 1:5
    glayout = @layout [a{0.75h}; b]
    misses = vcat(results[i][!, 7], results[i][!, 8], results[i][!, 9]);

    g1 = StatsPlots.groupedbar(
        names, misses, group = groups,
        bar_position = :stack,
        orientation = :horizontal
    );

    g2 = Plots.plot(
        results[i][!, 8],
        markershape = :x,
        markercolor = :red3,
        linestyle = :dot,
        linecolor = :red3,
        label = "L1I misses"
    );

    g = Plots.plot(
        g1, g2,
        layout = glayout,
        plot_title = benchmarks[i]
    );

    Plots.savefig(g, benchmarks[i] * "_misses.png");
end