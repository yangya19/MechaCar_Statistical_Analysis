# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![linear regression](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/linear%20regression%20output.png)
* The Pr(>|t|) value means probability that each coefficient is a random amount of variance to the mpg values. Therefore, from the output we can see vehicle length and ground clearance provides a non-random amount variance to the linear regression. 

* The linear regression model is: mpg = 6.27 * vehicle_length - 3.41 * AWD + 3.55 * ground_clearance - 104, therefore the slope is not considered zero. 


* The R-squared value is 0.7149 which means 71.49% of variantions can be explained by the variables we have: vehicle_length, vehicle_weight, spoiler_angle, AWD and ground_clearence. Therefore this linear model predicts mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
![total summary](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/total%20summary.png)

* This is the summary table for all population across all manufacturing lots.

![lot summary](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/lot%20summary.png)

* This is the summary table for each individual manufacturing lot.


* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

* As we can see from the total summary, all manufacturing lots in total has a global variance of 62.3psi, which means it passed the requirement of not exceeding 100 pounts of variance.

* On lot level, lot 1 and lot 2 has variances lower than 100 and they are into specs. Lot 3 is out of specs with variance 170.3 psi.

## T-Tests on Suspension Coils
![t-test global](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/global%20t-test.png)
* This is the t-test for all manufacturing lots against population mean (1500 psi). The p-value for this test is 0.7179. Assuming our significance level was the common 0.05 percent, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar,which means we can say PSI for all manufacturing lots are similar to the population mean of 1500psi.

![t-test lot1](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/lot1%20t-test.png)

![t-test lot2](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/lot2%20t-test.png)

![t-test lot3](https://github.com/yangya19/MechaCar_Statistical_Analysis/blob/main/Resources/lot3%20t-test.png)
* Here are the t-test for lot1,lot2, and lot3 vs. population mean of 1500 psi. Assuming significance level is at 0.05 percent, the p-values for all these lots are greater than 0.05. Therefore we cannot reject null hypothesis, and we can conclude that PSI per lot are statistically similar to the population mean.

## Study Design: MechaCar vs Competition
For additional performance tests, we can choose to compare metrics such as:

* 0 to 60 mph time
* Horsepower
* Torque
* Safety rating

The null hypothesis for this study case is: Each performance metrics mentioned above for MechaCar and competitor's car are statistically similar.

Since we are going to test if there is statistical differences between the distribution means from multiple samples, we can use one-way ANOVA test. In this analysis we will compare the means for each metric across the competitors.

In order to perform the test, we need to gather data of 0 to 60 mph time, horsepower, torque and safety rating from MechaCar and all competitors to be tested. All the data should be organized in one table, with each car brand as row, and each metric as column. 



