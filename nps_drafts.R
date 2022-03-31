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