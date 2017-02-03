data = read.csv("D:/Payworld_Analytics_MLY_11-2016_retailer_mrp_per-day.csv", header = TRUE);

data

library(zoom)

plot(mrp~Day, data);

zm()

m0 = lm(Sum~Month, data);

m0;
summary(m0);
coef(m0);
p1 = coef(m0)[1] + coef(m0)[2] *12
p1
plot(m0);


m1 = glm(Sum~Month, data, family = poisson);

m1

plot(m1)
coef(m1)

#p1.glm = exp(coef(m1)[1] + coef(m1)[2] * 9); => p1 = coef(m0)[1] + coef(m0)[2] * 9

plot(p1.glm)
p1.glm = exp(coef(m1)[1] + coef(m1)[2] * 13);
p1.glm


summary(m1)


library(nlme)

m2 = glm(Sum~Day, data, family = gaussian);

m2

summary(m2)
