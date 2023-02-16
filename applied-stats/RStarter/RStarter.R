XYdata <- read.table(header=TRUE, text="
X     Y
10    25
18    55
25    50
40    75
50    110
63    138
42    90
30    60
5     10
55    100
")

head(XYdata)  # show the first 6 entries (just checking)

statsnames     <- c('mean', 'sd')
X.stats        <- c(mean(XYdata$X), sd(XYdata$X))
names(X.stats) <- statsnames
Y.stats        <- c(mean(XYdata$Y), sd(XYdata$Y))
names(Y.stats) <- statsnames

X.stats
Y.stats

Rxy <- cor(XYdata$X, XYdata$Y)
names(Rxy) <- "r(x,y)"
Rxy

plot(XYdata, main="XYdata scatterplot", sub=paste("r(x,y) = ", signif(Rxy, 4)) )
