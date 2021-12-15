using DataFrames, CSV
using Plots, PlotlyJS
plotlyjs()

cost_function = DataFrame(CSV.File("cost_function.txt"));

c1 = PlotlyJS.scatter(
    y = cost_function[!, 2],
    x = 1:13,
    name = "specbzip"
);

c2 = PlotlyJS.scatter(
    y = cost_function[!, 3],
    x = 1:13, 
    name = "specmcf"
);

c3 = PlotlyJS.scatter(
    y = cost_function[!, 4],
    x = 1:13,
    name = "specsjeng"
);

c4 = PlotlyJS.scatter(
    y = cost_function[!, 5],
    x = 1:13,
    name = "spechmmer"

);

c5 = PlotlyJS.scatter(
    y = cost_function[!, 6],
    x = 1:13,
    name = "speclibm"
);

c = PlotlyJS.plot([c1, c2, c3, c4, c5]);
c.plot.layout["title"] = "Cost function values per benchmark";
PlotlyJS.savefig(c, "../output/cost_function.jpeg", width = 872, height = 654);

