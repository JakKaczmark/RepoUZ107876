n = 30
x = runif (n,-5,20)
y = 0.1*(x^2)-3*x+5+rnorm(n,0,1)
model = lm(y~(I(x^2)+x))
xp=seq(min(x),max(x),len=100)
yp=predict(model,list(x=xp))
plot(x,y)
lines(xp,yp,col='red')
print(summary(model))