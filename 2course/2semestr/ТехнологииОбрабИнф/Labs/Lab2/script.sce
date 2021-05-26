sample_A = rand(1,40)
sample_B = rand(30,60)
sample_C = rand(30,60)
sample_D = rand(30,60)
sample_E = rand(30,60)

sample_A = round(sample_A*10)
sample_B = round(sample_B*10)
sample_C = round(sample_C*10)
sample_D = round(sample_D*10)
sample_E = round(sample_E*10)

mean_A = mean(sample_A)
mean_B = mean(sample_B)
mean_C = mean(sample_C)
mean_D = mean(sample_D)
mean_E = mean(sample_E)

size_A = size(sample_A)
size_B = size(sample_B)  
size_C = size(sample_C)
size_D = size(sample_D)
size_E = size(sample_E)

mult_A_A = mean_A * size_A
mult_B_B = mean_B * size_B
mult_C_C = mean_C * size_C
mult_D_D = mean_D * size_D
mult_E_E = mean_E * size_E

sum_size_ABCDE = size_A + size_B + size_C + size_D + size_E

sum_mult_ABCDE = mult_A_A + mult_B_B + mult_C_C + mult_D_D + mult_E_E

weighted_average = sum_mult_ABCDE / sum_size_ABCDE

minM = min(sample_A);
maxM = max(sample_A);

rang = maxM - minM

iqr_A = iqr(sample_A);

variance_A = variance(sample_A);

deviation_A = sqrt(variance_A);

coef_variat_A = mean_A / deviation_A

histVector = [];
for idx = minM:maxM
    v = find(sample_A == idx);
    if (~isempty(v))
        histVector = [histVector; [idx,length(v)]];
    end
end

median_A = median(sample_A)

//display
disp('min: ',minM);
disp('max: ',maxM);
disp('weighted average: ',weighted_average);
disp('iqr: ', iqr_A);
disp('coeff variable: ', coef_variat_A);

//gistogramm
clf();
bar(sample_A,1,"cyan");
xtitle('Зничения элементов исходной последовательности');
xgrid();




