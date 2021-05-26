//Лабораторная работа №4
gen_sample = [1 2 5]

gen_sample_mean = mean(gen_sample)
gen_sample_med = median(gen_sample)
gen_sample_range = max(gen_sample) - min(gen_sample)
gen_sample_variance = variance(gen_sample, "*", %nan)
gen_sample_deviation = sqrt(gen_sample_variance)

k = 0
for i = 1:length(gen_sample)
    if modulo(gen_sample(i),2) <> 0
        k = k+1
    end
end
gen_sample_odds = k/length(gen_sample)

samples_num = size(gen_sample, "c")^2
samples = [ gen_sample(1) gen_sample(1)
            gen_sample(1) gen_sample(2)
            gen_sample(1) gen_sample(3)

            gen_sample(2) gen_sample(1)
            gen_sample(2) gen_sample(2)
            gen_sample(2) gen_sample(3)

            gen_sample(3) gen_sample(1)
            gen_sample(3) gen_sample(2)
            gen_sample(3) gen_sample(3) ]

samples_means = sum(samples,"c")/size(samples,"c")
samples_medians = median(samples, "c")
samples_range = max(samples, "c") - min(samples, "c")
samples_variance = variance(samples, "c")
samples_deviation = sqrt(samples_variance)

for i = 1:size(samples, "r")
    k = 0
    for j = 1:size(samples, "c")
        if modulo(samples(i,j),2) <> 0
            k = k + 1
        end
    end
    odds(i) = k
end 
samples_odds = odds/size(samples, "c")

mean_samples_means = mean(samples_means)
mean_samples_medians = mean(samples_medians)
mean_samples_range = mean(samples_range)
mean_samples_variance = mean(samples_variance)
mean_samples_deviation = mean(samples_deviation)
mean_samples_odds = mean(samples_odds)

disp("Means",mean_samples_means)
disp("Medians",mean_samples_medians)
disp("Range",mean_samples_range)
disp("Variance",mean_samples_variance)
disp("Deviation",mean_samples_deviation)
disp("Odds",mean_samples_odds)

//НУЖНА ТАБЛИЦА!!!!!!!!!!!!!!!!!!!!!!
