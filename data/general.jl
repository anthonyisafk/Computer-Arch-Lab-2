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
        x = 1:10,
        marker_symbol = "circle",
        marker_color = "royalblue",
        marker_size = 8,
        line_color = "royalblue",
        line_dash = "dot",
        name = "L2 accesses",
    );

    p42 = PlotlyJS.scatter(
        y = results[i][!, 11],
        x = 1:10,
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
    PlotlyJS.savefig(p, benchmarks[i] * "_general.jpeg",
        width = 872, height = 654);
end