library(dplyr)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+AWD+ground_clearance, data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+AWD+ground_clearance, data=MechaCar_mpg))

suspension_Coil_mpg <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_Coil_mpg)

total_summary <- suspension_Coil_mpg %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
total_summary

lot_summary <- suspension_Coil_mpg %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
lot_summary

t.test(suspension_Coil_mpg$PSI,mu=1500)

psi_lot1 <- suspension_Coil_mpg %>% subset(Manufacturing_Lot=='Lot1')
t.test(psi_lot1$PSI,mu=1500)

psi_lot2 <- suspension_Coil_mpg %>% subset(Manufacturing_Lot=='Lot2')
t.test(psi_lot2$PSI,mu=1500)

psi_lot3 <- suspension_Coil_mpg %>% subset(Manufacturing_Lot=='Lot3')
t.test(psi_lot3$PSI,mu=1500)