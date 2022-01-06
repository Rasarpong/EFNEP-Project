*********************************************************************************
*   T1T2BMI compares BMI improvements from beginning to the end of the  		*
*   program. looks at the bmi improvements ffrom pre to post.          			* 
*   Below 18.5=underweight,18.5 to 24.9=normal, 25 to 29.9=overweight  			*
*   30 and over=obese                                                  			*                                                    *
*   note: none of the observations were underweight, most were overweight		*
*   and obese. therefore a reduction in BMI is preferred						*
*   Dummy variables 															*
*   0 = those who had a reduction in bmi but whose bmi was aproaching overweight*
*   1 = those who were obese and had a reducton in bmi							*
*   2 = those who had an increase in bmi										*
*********************************************************************************

gen T1T2BMI=.
* reduction in prepost bmi (overweight to normal)*
replace T1T2BMI=0 if (t2bmi<t1bmi & t1bmi<30 & t1bmi!=. & t2bmi!=.)
*reduction in prepost bmi (obese to normal)*
replace T1T2BMI=1 if (t2bmi<t1bmi & t1bmi>30 & t1bmi!=. & t2bmi!=.)
* increase in bmi*
replace T1T2BMI=2 if (t2bmi>t1bmi & t1bmi!=. & t2bmi!=.)
tab T1T2BMI

*********************************************************************************
*   T2T3BMI compares BMI improvements from end of the program to 6 months		*
*   looks at the bmi improvements 6 months after graduating from the program	*
*   Below 18.5=underweight,18.5 to 24.9=normal, 25 to 29.9=overweight  			*
*   30 and over=obese                                                  			*                                                    *
*   note: none of the observations were underweight, most were overweight		*
*   and obese. therefore a reduction in BMI is preferred						*
*   Dummy variables 															*
*   0 = those who had a reduction in bmi but whose bmi was aproaching overweight*
*   1 = those who were obese and had a reducton in bmi							*
*   2 = those who had an increase in bmi										*
*********************************************************************************

gen T2T3BMI=.
* reduction in pre6months bmi (overweight to normal)*
replace T2T3BMI=0 if (t3bmi<t2bmi & t2bmi<30 & t2bmi!=. & t3bmi!=.)
*reduction in pre6months bmi (obese to normal)*
replace T2T3BMI=1 if (t3bmi<t2bmi & t2bmi>30 & t2bmi!=. & t3bmi!=.)
* increase in bmi*
replace T2T3BMI=2 if (t3bmi>t2bmi & t2bmi!=. & t3bmi!=.)
tab T2T3BMI


*********************************************************************************
*   T2T4BMI compares BMI improvements from end of the program to oneyear		*
*   looks at the bmi improvements one year after graduating from the program	*
*   Below 18.5=underweight,18.5 to 24.9=normal, 25 to 29.9=overweight  			*
*   30 and over=obese                                                  			*                                                    *
*   note: none of the observations were underweight, most were overweight		*
*   and obese. therefore a reduction in BMI is preferred						*
*   Dummy variables 															*
*   0 = those who had a reduction in bmi but whose bmi was aproaching overweight*
*   1 = those who were obese and had a reducton in bmi							*
*   2 = those who had an increase in bmi										*
*********************************************************************************

gen T2T4BMI=.
* reduction in pre-oneyear bmi (overweight to normal)*
replace T2T4BMI=0 if (t4bmi<t2bmi & t2bmi<30 & t2bmi!=. & t4bmi!=.)
*reduction in pre-oneyear bmi (obese to normal)*
replace T2T4BMI=1 if (t4bmi<t2bmi & t2bmi>30 & t2bmi!=. & t4bmi!=.)
* increase in pre-oneyear bmi*
replace T2T4BMI=2 if (t4bmi>t2bmi & t2bmi!=. & t4bmi!=.)
tab T2T4BMI


*********************************************************************************
* hba1c is the level of blod sugar. the higher the value the more blood sugar.	*
* normal levels of hba1c range from 4%-5.6%. most of the observations had high	*
* test values(above 5) therefore less is preferred.			                            *
* Dummy variables																*
* 0 = those who had a reduction in their sugar levels							*
* 1 = those who had an increase in sugar levels but not greater than 5.6		*
* 2 = those who had increase of sugar levels exceeding 5.6						*
*********************************************************************************

*********************************************************************************
* T1T2hba1c compares improvements from beginning of program to the end of the 	*
* program. pre to post program													*
*********************************************************************************
gen T1T2hba1c=.
replace T1T2hba1c=0 if (t2hba1c<t1hba1c & t1hba1c!=. & t2hba1c!=.)
replace T1T2hba1c=1 if (t2hba1c>t1hba1c & t2hba1c<=5.6 & t1hba1c!=. & t2hba1c!=.)
replace T1T2hba1c=2 if (t2hba1c>t1hba1c & t2hba1c>5.6 & t1hba1c!=. & t2hba1c!=.)
tab T1T2hba1c


*********************************************************************************
* T2T3hba1c compares improvements from end of program to six months after		*
* the program.																	*
*********************************************************************************
gen T2T3hba1c=.
replace T2T3hba1c=0 if (t3hba1c<t2hba1c & t2hba1c!=. & t3hba1c!=.)
replace T2T3hba1c=1 if (t3hba1c>t2hba1c & t3hba1c<=5.6 & t2hba1c!=. & t3hba1c!=.)
replace T2T3hba1c=2 if (t3hba1c>t2hba1c & t3hba1c>5.6 & t2hba1c!=. & t3hba1c!=.)
tab T2T3hba1c

*********************************************************************************
* T2T3hba1c compares improvements from end of program to one year after	the		*
* program.																		*
*********************************************************************************
gen T2T4hba1c=.
replace T2T4hba1c=0 if (t4hba1c<t2hba1c & t2hba1c!=. & t4hba1c!=.)
replace T2T4hba1c=1 if (t4hba1c>t2hba1c & t4hba1c<=5.6 & t2hba1c!=. & t4hba1c!=.)
replace T2T4hba1c=2 if (t4hba1c>t2hba1c & t4hba1c>5.6 & t2hba1c!=. & t4hba1c!=.)
tab T2T4hba1c
