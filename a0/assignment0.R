# 0.6 a
par(mfrow=c(1,3))

sample1_data=as.matrix(read.table("sample1.txt"))
dimnames(sample1_data) <- list(
  list("a","b","c", "d"), 
  list("I", "II", "III", "IV", "V")
)
sample1_data
histInfo <- hist(
  sample1_data, 
  probability = T, 
  breaks = 5,
  main = "Histogram of Sample 1"
)
histInfo

# 0.6 b
x  = seq(0, 2, 0.001)
y1 = x^4 
y1

y2 = 5*x + 2
y2

plot(x, y1, col="blue", type="l")
lines(x, y2, col="red")






