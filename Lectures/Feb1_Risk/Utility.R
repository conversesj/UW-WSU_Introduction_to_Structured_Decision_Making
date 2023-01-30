#Risk Lecture

#Simple Lottery 
value <- c(2000,30,-1,-1900)

#expected value 
(value1 <- value[2]*0.5+value[3]*0.5)
(value2 <- value[1]*0.5+value[4]*0.5)

utility <- c(100,60,50,0)

#expected utility 
(utility1 <- utility[2]*0.5+utility[3]*0.5)
(utility2 <- utility[1]*0.5+utility[4]*0.5)

#Endangered species problem 
pr1 <- c(0.00,0.50,0.20,0.20,0.10)
pr2 <- c(0.20,0.00,0.50,0.20,0.10)
pr3 <- c(0.05,0.20,0.35,0.30,0.10)
pr4 <- c(0.25,0.25,0.10,0.10,0.30)

value <- c(0.1,0.25,0.75,0.95,1)

#expected value 
(ev1 <- sum(value*pr1))
(ev2 <- sum(value*pr2))
(ev3 <- sum(value*pr3))
(ev4 <- sum(value*pr4))

#probabliity not declining 
(pr.notdecline1 <- sum(pr1[3:5]))
(pr.notdecline2 <- sum(pr2[3:5]))
(pr.notdecline3 <- sum(pr3[3:5]))
(pr.notdecline4 <- sum(pr4[3:5]))

#maxi-min 
(robust1 <- value[min(which(pr1>0))])
(robust2 <- value[min(which(pr2>0))])
(robust3 <- value[min(which(pr3>0))])
(robust4 <- value[min(which(pr4>0))])
        
##now add a utility function 
utility <- 1-exp(-value/0.4)

#plot utility function 
value.cont <- seq(0,1,by=0.001)
utility.cont <- 1-exp(-value.cont/0.4)

plot(value,utility,xlab = "Probability of Extinction",ylab = "Utility",xlim=c(0,1),ylim=c(0,1),pch=19)
lines(value.cont,utility.cont)

#expected utility 
(eu1 <- sum(utility*pr1))
(eu2 <- sum(utility*pr2))
(eu3 <- sum(utility*pr3))
(eu4 <- sum(utility*pr4))

