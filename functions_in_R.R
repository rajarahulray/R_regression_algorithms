
analysis <- function(l)
{
	print(paste("No. of Retailers parsed: ",length(l)));
	for (i in 1:length(l))
	{
		data = read.csv(as.character(l[i]), header = TRUE);
		#_________________________Poisson_Linear_Regression_Model________________________________________#

		poisson_linear_model = glm(Sales~Month, data, family = poisson);
		prediction = exp(coef(poisson_linear_model)[1] + coef(poisson_linear_model)[2] * 12);
		#print(summary(poisson_linear_model));
		print(paste('Prediction for : ', l[i] ," = ", prediction));
		
	}
	
}

l = list.files("D:/payworld_prediction_optimized", full.names = TRUE);
#summary(l);
do.call("analysis", list(l));