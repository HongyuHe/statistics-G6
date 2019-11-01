a07 = function(x){
  (x - 2)^2
}

b07 = function(){
  takenSample = sample(1:100, 50, TRUE)
  nrPerColour = numeric(2)
  nrPerColour = c(sum(takenSample <= 30) / 50,
                  sum(takenSample >  30) / 50)
  nrPerColour
}

c07 = function(n = 10, mr = 30, mw = 70){
  totalNrBalls   = mr+mw
  takenSample    = sample(1:totalNrBalls, n, TRUE)
  fractionVector = numeric(2)
  fractionVector = c(sum(takenSample <= mr) / n, 
                     sum(takenSample >  mr) / n)
  fractionVector
}

d07 = function(){
  u = numeric(200)
  for(i in 1:200) {
    u[i] = median(sample(1:90, 40, TRUE))
  }
  u
}
