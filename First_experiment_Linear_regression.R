airquality

plot(Ozone~Wind, airquality);

m1 = lm(Ozone~Wind, airquality);

coef(m1)

p1_ozone = coef(m1)[1] + coef(m1)[2] * 19;

p1_ozone

m2 = glm(Ozone~Wind, airquality, family = poisson);
coef(m2)
p2_ozone = coef(m2)[1] + coef(m2)[2] * 19;
p2_ozone

p2_ozone.glm = exp(coef(m2)[1] + coef(m2)[2] * 19)
p2_ozone.glm

