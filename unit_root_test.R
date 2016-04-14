E=rnorm(240)
X=cumsum(E)
plot(X,type="l")

lags=0
z=diff(X)
n=length(z)
z.diff=embed(z, lags+1)[,1]
z.lag.1=X[(lags+1):n]
summary(lm(z.diff~0+z.lag.1 ))

summary(lm(z.diff~0+z.lag.1 ))$coefficients

library(urca)
df=ur.df(X,type="none",lags=0)
df

qnorm(c(.01,.05,.1)/2)

summary(df)