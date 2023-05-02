x <- c(2,17,15,7,11,3,8,19)
cumsum(x)
range(x)
mean(x)
sort(x, decreasing = TRUE) 
x^2
sum(x)
x[x>5]
x[-c(2,3,6)]
x <- 6
6 -> x

A <- c(2,4,3,5,7,6)
x <- A[2]
y <- A[4]
p <- A[c(2,5)]


for (i in length(A):1) {
  print(A[i])
}

a <- c(1:10)
b <- c(11:20)
res <- rep(0, length(a))
for (i in 1: length(a)) {
  res[i] <- a[i]+ b[i]
}
print(res)


