data = read.csv("D:/Payworld_Analytics_4_12_2016.csv", header = TRUE);

data = read.csv("D:/payworld_data_collections/PWID_1000215.csv", header = TRUE);

data_list = list("D:/Payworld_Analytics_4_12_2016 - Copy.csv", "D:/Payworld_Analytics_4_12_2016.csv");

data

data_list



library(zoom)

plot(Sum~Month, data);

zm()

#_________________________Linear_Regression_Model________________________________________#

m0 = lm(Sum~Month, data);

m0;
summary(m0);
coef(m0);
p1 = coef(m0)[1] + coef(m0)[2] *13
p1
plot(m0);
#__________________________Possion_Regression_Model__________________________#

m1 = glm(Sum~Month, data, family = poisson);

m1

plot(m1)
coef(m1)

p1_1 = exp(coef(m1)[1] + coef(m1)[2] * 9); #=> p1 = coef(m0)[1] + coef(m0)[2] * 9
p1_1
plot(p1_1)
p1_1 = exp(coef(m1)[1] + coef(m1)[2] * 13);
p1_1


summary(m1)

#________________________Gaussian_Regeression_Model_____________________________#
library(nlme)

m2 = glm(Sum~Day, data, family = gaussian);

m2

summary(m2)



a = list("a",
	"b",
	"c",
	"d")

