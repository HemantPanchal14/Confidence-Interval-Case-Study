# CONFIDENCE INTERVALS for POPULATION Std.Deviation ( 'Z' distribution)

#A confidence interval displays the probability that a parameter 
#will fall between a pair of values around the mean.
#They are most often constructed using confidence levels of 95% or 99%.

#Case Study= Credit card Launch
# A university with 100,000 alumni is thinking of offering a new affinity 
# credit card to it's alumni,The profitability of the card depends 
# on the average balance maintained by the card holder.
# The market research campaign is launched,in which about140 alumni accept, the card in a pilot launch.
# average balance maintained by these is $1990 and the standard deviation is $2833,assume that the population standard deviation is $ 2500 from previous launches.
#WHAT CAN WE SAY ABOUT THE AVERAGE BALANCE THAT WILL BE HELD AFTER FULL FLEDGE MARKET LAUNCH?

#Given data- Mean(population)=1990,SD(population)=2500,n=140

# We have build up confidence Interval say 95% it means,my 95% of values lie between Mean(X bar)
# Now considering 100% - 95% = 5% (alfa)i.e.0.05 (0.025+0.025) is a RISK FACTOR
# now, 1-alfa i.e. 1-0.025 = 0.975 ( this probability we have to calculate)
#Calculate 'qnorm' 

z<-qnorm(0.975)

#ans=1.96

x<-1990
Sd<-2500
n<-140

#calculate as per CI-'z'distribution formula to get intervals

# for minus side
x-(z*Sd/sqrt(n))     # Ans= 1575.882

# for plus side
x+(z*Sd/sqrt(n))     # Ans= 2404.118

# Range/Interval is 1575.882 to 2404.118 ( 'z'distribution)

# Our 95% of data lie between this range

# CONFIDENCE INTERVALS for SAMPLE Std.Deviation

#w.r.t. to above same data will calculate 't' distribution

# To calculate 'Z' we user 'qnorm' in R-studio,and for 't' will use 'qt'

# CONFIDENCE INTERVALS for Sample Std.Deviation ( 't' distribution)
?qt
# we need two data for calculating 't'=qt=(proba,degree of freedom (n-1)=140-1=139)
# will assign 'qt' as 't' 

t<-qt(0.975,139)
# ans t= 1.97

#calculate as per CI-'t'distribution formula to get intervals

Sstd<-2833
ssd<-2833/sqrt(140)    # ans= 239.4322
ssd

# for minus side
x-(t*Ssd/sqrt(n))            # ANS=    1516.6

# for plus side
x+(t*Ssd/sqrt(n))            # ANS=     2463.4

# Range/Interval " sample std.Deviation is 1516.6 to 2463.4 ( 't'distribution)