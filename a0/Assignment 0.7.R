a07 = function(x){
  (x - 2)^2
}

b07 = function(x){
  sample(x, 50, TRUE)
  red = sum(x<=30) / 50
  white = sum(x>30) / 50
}

c07 = function(x, n){
  sample(x, n, TRUE)
  fraction = c(sum(x<=mr) / n, sum(x>wr) / n)
  fraction
}

d07 = function(){
  u = length(200)
  for(i in 1:200) {
    u[i] = median(sample(1:90, 40, TRUE))
  }
}