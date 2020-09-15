mpg_data <- read.csv('MechaCar_mpg.csv') # import dataset
head(mpg_data)
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mpg_data) #create multiple linear regression model
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mpg_data)) #generate summary statistics

suspension_coil <- read.csv('Suspension_coil.csv') # import dataset
head(suspension_coil)
summarize_psi <- suspension_coil %>% summarise(mean(PSI), median(PSI), var(PSI), sd(PSI)) #create summary table

t.test(suspension_coil$PSI,mu=1500) #compare sample versus population means