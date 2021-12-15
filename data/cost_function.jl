using DataFrames, CSV


specbzip = DataFrame(CSV.File("specbzip_results.txt"));
spechmmer = DataFrame(CSV.File("spechmmer_results.txt"));
specsjeng = DataFrame(CSV.File("specsjeng_results.txt"));
speclibm = DataFrame(CSV.File("speclibm_results.txt"));
specmcf = DataFrame(CSV.File("specmcf_results.txt"));

size_l1i = [32, 128, 256, 256, 256, 256, 512, 512, 512, 512, 32, 256, 256];
size_l1d = [64, 64, 64, 128, 128, 128, 128, 256, 256, 256, 64, 256, 256];
size_l2 = [2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 4, 4];

assoc_l1i = [2, 1, 2, 2, 2, 2, 2, 4, 4, 4, 2, 2, 4];
assoc_l1d = [2, 1, 1, 1, 2, 1, 1, 1, 2, 2, 2, 2, 4];
assoc_l2 = [8, 2, 2, 2, 2, 2, 2, 2, 4, 4, 2, 8, 8];

results = [specbzip, specmcf, specsjeng, specsjeng, speclibm];
benchmarks = ["specbzip", "specmcf", "specsjeng", "spechmmer", "speclibm"];

rounds = 1:13;
header = vcat("round", results);

cost_function = DataFrame(
    Round = 1:13,
    specbzip = Vector{Float64}(undef, 13),
    specmcf = Vector{Float64}(undef, 13),
    specsjeng = Vector{Float64}(undef, 13),
    spechmmer = Vector{Float64}(undef, 13),
    speclibm = Vector{Float64}(undef, 13),
);

cost = 0;
for i = 1:5
    for j = 1:13
        cost = 5000 * sqrt(assoc_l1i[j]) * size_l1i[j] +
            5000 * sqrt(assoc_l1i[j]) * size_l1i[j] +
            1000 * sqrt(assoc_l2[j]) * size_l2[j] -
            (1 / results[i][j, 3]) *
            (8 / results[i][j, 7] + 8 / results[i][j, 8] + 2 / results[i][j, 9]); 

        cost_function[j, i + 1] = cost;
    end
end

CSV.write("cost_function.txt", cost_function);