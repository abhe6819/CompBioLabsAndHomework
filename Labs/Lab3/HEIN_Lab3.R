# lab step #3: assigned chip and guests sequences
chips <- 5
guests <- 8
# lab step #5: assigned chips eaten per guest
chipsperguest <- 0.4
# lab step #7: calculated leftover chips
chips - (chipsperguest * (guests + 1))
# lab step #8: assigned rankings as vectors
self <- c(7,9,8,1,2,3,4,6,5)
Penny <- c(5,9,8,3,1,2,4,7,6)
Lenny <- c(6,5,4,9,8,7,3,2,1)
Stewie <- c(1,9,5,6,8,7,2,3,4)
# lab step #9: make variables for episode IV
PennyIV <- Penny[4] 
LennyIV <- Lenny[4]
# lab step #10: combined rankings into one table
Rankings <- cbind(self,Penny,Lenny,Stewie)
str(PennyIV) # lab step #11: one rank
str(Penny) #all one persons rankings
str(Rankings) #all rankings
# lab step #12: make data frame out of vectors
data.frame(self,Penny,Lenny,Stewie)
Rankingstable <- as.data.frame(Rankings)
dim(Rankings)
dim(Rankingstable)
str(Rankings)
str(Rankingstable)
Rankings == Rankingstable
typeof(Rankings)
typeof(Rankingstable)
# lab step #13: (a) and (b) both contain the same info, but (b) is formatted as a table and (a) is a string of vectors
# lab step #14: episode vector
Episodes <- c("I","II","III","IV","V","VI","VII","VIII","IX")
help("row.names")
# lab step #15: naming rows with episodes
row.names(Rankingstable) <- Episodes
row.names(Rankings) <-Episodes
# Lab step #16: access Rankings row three
Rankings[3,]
# lab step #17:access Rankingstable column four
Rankingstable[,4]
# lab step #18: access your V Ranking
Rankings[5,1]
# lab step #19:access penny's II Rank
Rankings[2,2]
# Lab step #20: everyone's IV-VI rank
Rankings[4:6,]
# lab step #21: II,V,VII ranks
Rankings[c(2,5,7),]
# lab step #22: Penny and stewie, episodes IV and VI
Rankings[c(4,6),c(2,4)]
# lab step #23: switch Lenny II and V
LV <- Rankings[5,3]
Rankings[5,3] <- Rankings[2,3]
Rankings[2,3] <- LV
# lab step #24: using row/column labels
Rankings["III","Penny"]
Rankingstable["III","Penny"]
# lab step #25: undo #23 with names
LV <- Rankings["V","Lenny"]
Rankings["V","Lenny"] <- Rankings["II","Lenny"]
Rankings["II","Lenny"] <- LV
# lab step #26: re-do #23
LV <- Rankings["V","Lenny"]
Rankings["V","Lenny"] <- Rankings["II","Lenny"]
Rankings["II","Lenny"] <- LV