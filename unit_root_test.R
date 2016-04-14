data_file = "C:/dev/empirical_methods/data/Tbill10yr.csv"
df = read.csv(file = data_file,header = TRUE)
yield = df$VALUE

yield_diff = diff(yield)

#library(tseries)
#adf.test(yield,k =0)
        

#Dickey-Fuller = -1.3199, Lag order = 0, p-value = 0.8662

#"nc" for a regression with no intercept (constant) nor time trend
#"c" for a regression with an intercept (constant) but no time trend
#"ct" for a regression with an intercept (constant) and a time trend. 
#The default is "c".



library(fUnitRoots)
adfTest(yield,lags = 4,type = "ct")
adfTest(yield_diff,lags = 4,type = "ct")
