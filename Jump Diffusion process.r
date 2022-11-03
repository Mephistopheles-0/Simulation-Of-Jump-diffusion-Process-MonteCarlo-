set.seed(55555 ) 
# generalize d Wiener process plus jumps 
T <- 1 ; numSteps <- 1000 ; h <- T/numSteps 
# parameter s o f th e jum p componen t 
lambda <- 5 ; nu <- 0 ; xi <- 3 
# parameters of the diffusion component 
beta <- 9 ; sigma <- 3 
# sample the diffusion increments 
dX <- beta* h + sigma*sqrt(h)*rnorm(numSteps) 
# sample and add the jump component 
N <- rpois(1 , lambda*T ) 
jumpPos <- ceiling(runif(N)*T*numSteps) 
jumpSize <- rnorm(N,nu,xi ) 
dX[jumpPos] <- dX[jumpPos] + jumpSize 
# add components and cumulate sample path 
X <- c(0, cumsum(dX) ) 
if (N==0) { 
  plot(0:numSteps,X,type='l' ) 
}else { 
  plot(0:numSteps,X,type='l' ) 
  points(jumpPos,X[jumpPos] ) 
  points(jumpPos,X[jumpPos+1],pch=19 ) 
} 