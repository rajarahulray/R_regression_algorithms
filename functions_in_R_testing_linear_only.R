analysis_linear <- function(l)
{
	#print(l);
	for (i in 1:length(l))
	{
		data_linear = read.csv(as.character(l[i]), header = TRUE);
		#_________________________Linear_Regression_Model________________________________________#

		linear_model = lm(Sales~Month, data_linear);
		prediction = (coef(linear_model)[1] + coef(linear_model)[2] *13);
		#prediction = predict(linear_model, newdata = 13);
		#l = list()
		print(paste('Prediction for : ', l[i] ," = ", prediction));
		#print(summary(linear_model))
	}
}

l = list.files("D:/payworld_prediction_optimized", full.names = TRUE);
#summary(l);
do.call("analysis_linear", list(l));

