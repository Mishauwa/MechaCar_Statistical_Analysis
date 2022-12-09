# MechaCar_Statistical_Analysis

## Overview

The Data analytics team has to review the production data for insights that may help the manufacturing team of Auto RU's. The analyzes will be done in the R programming language. 

Part 1: Linear Regression to Predict MPG
Part 2: Summary Statistics on Suspension Coils
Part 3: T-Test on Suspension Coils
Part 4: Design a Study Comparing the MechaCar to the Competition


## Linear Regression to Predict MPG

In the MechaCar_mpg.csv dataset are test results for 50 prototype MechaCars. Multiple different metrics like vehicle length or vehicle weight are presented for each vehicle as variables. 

<img width="534" alt="Deliverable 1" src="https://user-images.githubusercontent.com/69826498/206780600-89c6cf36-80fe-45b1-b1a6-52d335353497.png">

### Results

- Vehicle Length and Ground Clearance are providing the non-random amount of variance to the mpg values. 

- The slope of the linear model is not considered to be zero. The tree asterisks show a highly significant p-value for vehicle length and ground clearance. Both have a Pr(>t) of about 0

- The linear model predicts mpg of MechaCar prototypes effectively 71% of the time. (R-squared value is 0.7149)

## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

- The suspension coil’s PSI continuous variable across all manufacturing lots.

<img width="387" alt="Dev2_total" src="https://user-images.githubusercontent.com/69826498/206780647-d1ec5091-09ca-43dc-881f-b447955a8f43.png">

- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

<img width="516" alt="Dev2_Lot" src="https://user-images.githubusercontent.com/69826498/206780676-e02221a6-3ced-4a2d-89bb-b832853490f4.png">

### Results:

- The variance for all manufacturing lots is 62.29. It doesn't exceed the 100 pounds per square inch limit. 

- The variance for Lot 1 and Lot 2 meets the design specifications. However Lot 3 doesn't meet the design specification because of a variance of 170.286.


## T-Tests on Suspension Coils

In the following section T-Tests are performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. 

<img width="721" alt="Deliverable 3" src="https://user-images.githubusercontent.com/69826498/206780708-519eadce-9f6d-4304-a843-194877c52749.png">

### Results:

- For all the manufacturing lots, the PSI is statistically similar to the population mean of 1500 pounds per square inch. The p - value of 0.0602 is higher than 0.05. which shows that the null hypothesis is correct. 

- The PSI for lot 1 and 2 are statistically not different, as the p - values of 1 and 0.6 are higher than 0.05. However the PSI for lot 3 is statistically different, as the p-value of 0.041 is below 0.05. Null hypothesis could be rejected. 

## Study Design: MechaCar vs Competition

As an additional analysis, a study can be created to compare performance of MechaCar vehicles against performance of vehicles from other manufacturers.

### Metrics:

- Fuel efficiency: city mpg and highway mpg
- Vehicle types: coupe, convertible, sedan, crossover, diesel, ....

### Hypthesis:

- Null Hyphothesis: MechaCars perform similar to other manufacturers, by comparing fuel efficiency across vehicle type. 

- Alternative Hypothesis: MechaCars perform different to other manufacturers, by comparing fuel efficiency across vehicle type. 

### Statistical Test:

- ANOVA can validate the hypothesis and determine the differences
- Boxplot can visualize the variability and the central tendency

### Necessary Data:

The sample size of the cars per type has to be sufficient. Definitely more than 50. Calculations in regards fuel economy for each vehicle has to be available. 



























