library(expm)

N=9
P <- matrix(0, N, N)
P[1,1] <- P[1,2] <- P[1, 4] <- 1/3
P[2,1] <- P[2,2] <- P[2, 3] <- P[2,5] <- 1/4
P[3,2] <- P[3,3] <- P[3, 6] <- 1/3
P[4,1] <- P[4,4] <- P[4, 5] <- P[4,7] <- 1/4
P[5,2] <- P[5,4] <- P[5, 5] <- P[5,6] <- P[5,8] <- 1/5
P[6,3] <- P[6,5] <- P[6, 6] <- P[6, 9] <- 1/4
P[7,4] <- P[7,7] <- P[7, 8] <- 1/3
P[8,5] <- P[8,7] <- P[8,8] <-P[8, 9] <- 1/4
P[9,6] <- P[9,8] <- P[9, 9] <- 1/3


stationary = c( 1/11, 4/33, 1/11, 4/33, 5/33, 4/33, 1/11, 4/33, 1/11 )

for (row in 1:(N+1) ) {
    PI[row, ] <- stationary
}

v1 <- rep(1, 8)

test12 <- max( (1/2) * abs( (P %^% 12) - PI ) %*% v1 )
test13 <- max( (1/2) * abs( (P %^% 13) - PI ) %*% v1 )

#  Alternative code using apply( , 1, sum)
#  test30 <- max( (1/2) * apply( abs( (P %^% 30) - PI ), 1, sum ) )
#  test31 <- max( (1/2) * apply( abs( (P %^% 31) - PI ), 1, sum ) )

cat("Total Variation distance after 30 steps: ", test30, "\n")
cat("Total Variation distance after 31 steps: ", test31, "\n")
