# Deliverable 1: Linear Regression to Predict MPG

library(dplyr)

MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

MechaCar_mpg_df

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg_df))


# Deliverable 2: Create Visualizations for the Trip Analysis

Suspension_Coil_Table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

total_summary <- Suspension_Coil_Table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Deliverable 3: T-Tests on Suspension Coils

t.test(Suspension_Coil_Table$PSI, mu = 1500)

# Lot 1

t.test(subset(Suspension_Coil_Table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)

# Lot 2

t.test(subset(Suspension_Coil_Table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)

# Lot 3

t.test(subset(Suspension_Coil_Table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)




