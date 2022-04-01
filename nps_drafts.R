n_promoters_brand_a <- 10
n_detractors_brand_a <- 5
n_passives_brand_a <- 30

promoter_sample_brand_a <- rep(1, times = n_promoters_brand_a)
passive_sample_brand_a <- rep(0, times = n_passives_brand_a)
detractor_sample_brand_a <- rep(-1, times = n_detractors_brand_a)
brand_a <- c(promoter_sample_brand_a, passive_sample_brand_a, detractor_sample_brand_a)
npss_brand_a <- mean(brand_a)

n_promoters_brand_b <- 40
n_passives_brand_b <- 30
n_detractors_brand_b <- 45

promoter_sample_brand_b <- rep(1, times = n_promoters_brand_b)
passive_sample_brand_b <- rep(0, times = n_passives_brand_b)
detractor_sample_brand_b <- rep(-1, times = n_detractors_brand_b)
brand_b <- c(promoter_sample_brand_b, passive_sample_brand_b, detractor_sample_brand_b)
npss_brand_b <- mean(brand_b)





#promoters <- c(9,10)
#passives  <- c(7,8)
#detractors <- c(-1:6)
#
#promoter_sample_brand_b <- sample(promoters, n_promoters_brand_b, replace = T)
#passive_sample_brand_b <- sample(passives, n_passives_brand_b, replace = T)
#detractor_sample_brand_b <- sample(detractors, n_detractors_brand_b, replace = T)
#brand_b <- c(promoter_sample_brand_b, passive_sample_brand_b, detractor_sample_brand_b)
#
#promoter_sample_brand_a <- sample(promoters, n_promoters_brand_a, replace = T)
#passive_sample_brand_a <- sample(passives, n_passives_brand_a, replace = T)
#detractor_sample_brand_a <- sample(detractors, n_detractors_brand_a, replace = T)
#brand_a <- c(promoter_sample_brand_a, passive_sample_brand_a, detractor_sample_brand_a)




ci_mean_a <- data.frame(vals = c(mean(brand_a) - 1.96*(sd(brand_a)/sqrt(length(brand_a))), mean(brand_a), mean(brand_a) + 1.96*(sd(brand_a)/sqrt(length(brand_a)))), labels = c('Brand A Lower CI (95%)', 'Brand A NPS Statistic', 'Brand A Upper CI (95%)'))

ci_mean_b <- data.frame(vals = c(mean(brand_b) - 1.96*(sd(brand_a)/sqrt(length(brand_b))), mean(brand_b), mean(brand_b) + 1.96*(sd(brand_b)/sqrt(length(brand_b)))), labels = c('Brand B Lower CI (95%)', 'Brand B NPS Statistic', 'Brand B Upper CI (95%)'))

d <- ggplot(data = melted) + aes(x = value, fill = variable) + 
  geom_density() + geom_vline(data = ci_mean_a, aes(xintercept= vals), color="blue", size=0.5) + geom_text(data = ci_mean_a, aes(x=vals, y = 0.5, label = labels), size = 4, angle = 90, vjust = -0.4) + geom_vline(data = ci_mean_b, aes(xintercept= vals), color="red", size=0.5) + geom_text(data = ci_mean_b, aes(x=vals, y = 0.5, label = labels), size = 4, angle = 90, vjust = -0.4, )  + ggtitle(label = "NPS statistic and Confidence Intervals (95%) for Brands A and B") + scale_x_continuous(labels = percent)
d
