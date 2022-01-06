import excel "C:\Users\PC\OneDrive\Graduate School\RESEARCH\EFNEP DATA\colorado\Colorado ESBA Biometric Data.xlsx", sheet("Sheet1") firstrow clear
*********************************************************************************
*   T1T2BMI compares BMI improvements from beginning to the end of the  		*
*   program. looks at the bmi improvements ffrom pre to post.          			* 
*   Dummy variables															*
*   0 = those who had a reduction in bmi										*
*   1 = those who had an no change(or an increase)								*							*
*********************************************************************************

gen T1T2BMI=.
replace T1T2BMI=1 if (T2BMI<T1BMI & T1BMI!=. & T2BMI!=.)
replace T1T2BMI=0 if (T2BMI>=T1BMI & T1BMI!=. & T2BMI!=.)
tab T1T2BMI

*********************************************************************************
*   T2T3BMI compares BMI improvements from end of the program to 6 months		*
*   looks at the bmi improvements 6 months after graduating from the program	*
*   Dummy variables 															*
*   0 = those who had a reduction in bmi										*
*   1 = those who had an no change(or an increase)								*
*********************************************************************************

gen T2T3BMI=.
replace T2T3BMI=1 if (T3BMI<T2BMI & T2BMI!=. & T3BMI!=.)
replace T2T3BMI=0 if (T3BMI>=T2BMI & T2BMI!=. & T3BMI!=.)
tab T2T3BMI


*********************************************************************************
*   T2T4BMI compares BMI improvements from end of the program to oneyear		*
*   looks at the bmi improvements one year after graduating from the program	*
*   Dummy variables 															*
*   0 = those who had a reduction in bmi										*
*   1 = those who had an no change(or an increase)								*
*********************************************************************************

gen T2T4BMI=.
replace T2T4BMI=1 if (T4BMI<T2BMI & T2BMI!=. & T4BMI!=.)
replace T2T4BMI=0 if (T4BMI>=T2BMI & T2BMI!=. & T4BMI!=.)
tab T2T4BMI


*********************************************************************************
* hba1c is the level of blod sugar. the higher the value the more blood sugar.	*
* normal levels of hba1c range from 4%-5.6%. most of the observations had high	*
* test values(above 5) therefore less is preferred.			                    *
* Dummy variables																*
* 0 = those who had a improvement in their sugar levels							*
* 1 = those who had no change or increase in sugar levels 
*********************************************************************************

*********************************************************************************
* T1T2hba1c compares improvements from beginning of program to the end of the 	*
* program. pre to post program													*
*********************************************************************************
gen T1T2HbA1C=.
replace T1T2HbA1C=1 if (T2HbA1C<T1HbA1C & T1HbA1C!=. & T2HbA1C!=.)
replace T1T2HbA1C=0 if (T2HbA1C>=T1HbA1C & T1HbA1C!=. & T2HbA1C!=.)

tab T1T2HbA1C


*********************************************************************************
* T2T3hba1c compares improvements from end of program to six months after		*
* the program.																	*
*********************************************************************************
gen T2T3HbA1C=.
replace T2T3HbA1C=1 if (T3HbA1C<T2HbA1C & T2HbA1C!=. & T3HbA1C!=.)
replace T2T3HbA1C=0 if (T3HbA1C>=T2HbA1C & T2HbA1C!=. & T3HbA1C!=.)

tab T2T3HbA1C

*********************************************************************************
* T2T3hba1c compares improvements from end of program to one year after	the		*
* program.																		*
*********************************************************************************
gen T2T4HbA1C=.
replace T2T4HbA1C=1 if (T4HbA1C<T2HbA1C & T2HbA1C!=. & T4HbA1C!=.)
replace T2T4HbA1C=0 if (T4HbA1C>=T2HbA1C & T2HbA1C!=. & T4HbA1C!=.)

tab T2T4HbA1C



*********************************************************************************
* sbp is the Systolic blood pressure.											*
* normal levels of Systolic blood pressure is less than 120.								*
* Dummy variables																*
* 1 = those who had a reduction in their sbp							*
* 0 = those who had no change or increase in sbp					*
*********************************************************************************

gen T1T2SBP=.
replace T1T2SBP=1 if (T2SBP<T1SBP & T1SBP!=. & T2SBP!=.)
replace T1T2SBP=0 if (T2SBP>=T1SBP & T1SBP!=. & T2SBP!=.)
tab T1T2SBP


gen T2T3SBP=.
replace T2T3SBP=1 if (T3SBP<T2SBP & T2SBP!=. & T3SBP!=.)
replace T2T3SBP=0 if (T3SBP>=T2SBP & T2SBP!=. & T3SBP!=.)
tab T2T3SBP


gen T2T4SBP=.
replace T2T4SBP=1 if (T4SBP<T2SBP & T2SBP!=. & T4SBP!=.)
replace T2T4SBP=0 if (T4SBP>=T2SBP & T2SBP!=. & T4SBP!=.)
tab T2T4SBP


*********************************************************************************
* dbp is the diastolic blood pressure.											*
* normal levels of Systolic blood pressure is less than 120.								*
* Dummy variables																*
* 1 = those who had a reduction in their dbp							*
* 0 = those who had no change or increase in dbp					*
*********************************************************************************

gen T1T2DBP=.
replace T1T2DBP=1 if (T2DBP<T1DBP & T1DBP!=. & T2DBP!=.)
replace T1T2DBP=0 if (T2DBP>=T1DBP & T1DBP!=. & T2DBP!=.)
tab T1T2DBP


gen T2T3DBP=.
replace T2T3DBP=1 if (T3DBP<T2DBP & T2DBP!=. & T3DBP!=.)
replace T2T3DBP=0 if (T3DBP>=T2DBP & T2DBP!=. & T3DBP!=.)
tab T2T3DBP


gen T2T4DBP=.
replace T2T4DBP=1 if (T4DBP<T2DBP & T2DBP!=. & T4DBP!=.)
replace T2T4DBP=0 if (T4DBP>=T2DBP & T2DBP!=. & T4DBP!=.)
tab T2T4DBP



gen T1T2PULSE=.
replace T1T2PULSE=1 if (T2Pulse<T1Pulse & T1Pulse!=. & T2Pulse!=.)
replace T1T2PULSE=0 if (T2DBP>=T1Pulse & T1Pulse!=. & T2Pulse!=.)
tab T1T2PULSE


gen T2T3PULSE=.
replace T2T3PULSE=1 if (T3Pulse<T2Pulse & T2Pulse!=. & T3Pulse!=.)
replace T2T3PULSE=0 if (T3Pulse>=T2Pulse & T2Pulse!=. & T3Pulse!=.)
tab T2T3PULSE


gen T2T4PULSE=.
replace T2T4PULSE=1 if (T4Pulse<T2Pulse & T2Pulse!=. & T4Pulse!=.)
replace T2T4PULSE=0 if (T4Pulse>=T2Pulse & T2Pulse!=. & T4Pulse!=.)
tab T2T4PULSE

tab T1T2BMI T1T2HbA1C
