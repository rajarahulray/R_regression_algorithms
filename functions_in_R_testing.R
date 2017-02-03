
analysis_linear <- function(l)
{
	#print(l);
	for (i in 1:length(l))
	{
		data_linear = read.csv(as.character(l[i]), header = TRUE);
		#_________________________Linear_Regression_Model________________________________________#

		linear_model = lm(Sum~Month, data);
		prediction = (coef(linear_model)[1] + coef(linear_model)[2] *13);
		#prediction = predict(linear_model, newdata = 13);
		#l = list()
		print(paste('Prediction for : ', l[i] ," = ", prediction));
		#print(summary(linear_model))
	}
}

analysis_poisson <- function(l)
{	
	print("Inside The Function : analysis_poisson");
	print(l)	
	#for (i in 1:length(l))
	#{
		print(typeof(as.character(l[1])));
		data_poisson = read.csv(as.character(l[1]), header = TRUE);

		#_________________________Poisson_Linear_Regression_Model________________________________________#

		poisson_linear_model = glm(Sum~Month, data_poisson, family = poisson);

		prediction = exp(coef(poisson_linear_model)[1] + coef(poisson_linear_model)[2] * 8);

		#prediction = predict(poisson_linear_model, newdata = 13);
		#l = list()
		print(paste('Prediction for : ', l[1] ," = ", prediction));
	#}
	#summary(poisson_linear_model);
}

#Data for Prediction.....

l = list.files("D:/payworld_data_collections", full.names = TRUE);

l = list.files("D:/payworld_prediction_optimized", full.names = TRUE);

#____________________________________________function_calls_________________________________________________________#

#1. Calls to analysis_linear ():

do.call("analysis_linear", list(l));



#2. Calls to analysis_poisson ():
do.call("analysis_poisson", list("D:/PWID_1000003.csv"));

l_test_2 = list("D:/PWID_1000003_test.csv");
do.call("analysis_poisson", l_test_2);

do.call("analysis_poisson", list(l));

data_poisson = read.csv("D:/PWID_1000003.csv", header = TRUE);

l_test = list("D:/PWID_1000003.csv")
