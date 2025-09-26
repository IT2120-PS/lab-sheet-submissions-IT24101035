setwd("C:\\Users\\it24101035\\Documents\\IT24101035")
getwd()

nicotine <- scan("Data - Lab 8.txt", what = numeric(), skip = 1)
weights <- scan("Exercise - LaptopsWeights.txt", what = numeric(), skip = 1)

pop_mean_nic <- mean(nicotine)
pop_var_nic <- sum((nicotine - pop_mean_nic)^2) / length(nicotine)
pop_sd_nic <- sqrt(pop_var_nic)

pop_mean_nic
pop_var_nic
pop_sd_nic
var(nicotine)
sd(nicotine)

set.seed(123)
nic_sample_means <- replicate(30, mean(sample(nicotine, size = 5, replace = TRUE)))
nic_sample_sds <- replicate(30, sd(sample(nicotine, size = 5, replace = TRUE)))





set.seed(123)
nic_sample_means <- replicate(30, mean(sample(nicotine, size = 5, replace = TRUE)))
nic_sample_sds <- replicate(30, sd(sample(nicotine, size = 5, replace = TRUE)))

nic_sample_means
mean(nic_sample_means)
sd(nic_sample_means)

pop_sd_nic / sqrt(5)

pop_mean_w <- mean(weights)
pop_var_w <- sum((weights - pop_mean_w)^2) / length(weights)
pop_sd_w <- sqrt(pop_var_w)

pop_mean_w
pop_var_w
pop_sd_w
var(weights)
sd(weights)




set.seed(123)
w_sample_means <- replicate(25, mean(sample(weights, size = 6, replace = TRUE)))
w_sample_sds <- replicate(25, sd(sample(weights, size = 6, replace = TRUE)))

w_sample_means
mean(w_sample_means)
sd(w_sample_means)

pop_sd_w / sqrt(6)

write.csv(data.frame(nicotine = nicotine), "nicotine_data.csv", row.names = FALSE)
write.csv(data.frame(weights = weights), "weights_data.csv", row.names = FALSE)







# Load data
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Population mean and SD
popmn <- mean(data$Weight.kg)
popsd <- sd(data$Weight.kg)

print(popmn)
print(popsd)

# Draw 25 samples of size 6 (with replacement)
s_means <- c()
s_sds   <- c()

for(i in 1:25){
  samp <- sample(data$Weight.kg, 6, replace = TRUE)
  s_means[i] <- mean(samp)
  s_sds[i]   <- sd(samp)
}

# Create results table AFTER loop
sample_table <- data.frame(Sample = 1:25, Mean = s_means, SD = s_sds)
print(sample_table)

# Mean and SD of sample means
mean_of_sample_means <- mean(s_means)
sd_of_sample_means   <- sd(s_means)

mean_of_sample_means <- mean(s_means)
sd_of_sample_means   <- sd(s_means)

print(paste("Mean of Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of Sample Means:", sd_of_sample_means))

