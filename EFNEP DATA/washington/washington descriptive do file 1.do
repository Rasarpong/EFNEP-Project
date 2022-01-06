import excel "C:\Users\Richard.AcquahSarpon\OneDrive\Graduate School\EFNEP RESEARCH\EFNEP DATA\washington\MASTER Washington Biometric & Recall data.xlsx", sheet("Master BioRecall") firstrow
*********************************************************************************

gen T1T2BMI=.
replace T1T2BMI=1 if (T2BMI<T1BMI & T1BMI!=. & T2BMI!=.)
replace T1T2BMI=0 if (T2BMI>=T1BMI & T1BMI!=. & T2BMI!=.)
tab T1T2BMI
********************************************************************************

gen T1T3BMI=.
replace T1T3BMI=1 if (T3BMI<T1BMI & T1BMI!=. & T3BMI!=.)
replace T1T3BMI=0 if (T3BMI>=T1BMI & T1BMI!=. & T3BMI!=.)
tab T1T3BMI
*********************************************************************************

gen T1T4BMI=.
replace T1T4BMI=1 if (T4BMI<T1BMI & T1BMI!=. & T4BMI!=.)
replace T1T4BMI=0 if (T4BMI>=T1BMI & T1BMI!=. & T4BMI!=.)
tab T1T4BMI
*********************************************************************************
gen T1T2HbA1C=.
replace T1T2HbA1C=1 if (T2HbA1C<T1HbA1C & T1HbA1C!=. & T2HbA1C!=.)
replace T1T2HbA1C=0 if (T2HbA1C>=T1HbA1C & T1HbA1C!=. & T2HbA1C!=.)
tab T1T2HbA1C
*********************************************************************************
gen T1T3HbA1C=.
replace T1T3HbA1C=1 if (T3HbA1C<T1HbA1C & T1HbA1C!=. & T3HbA1C!=.)
replace T1T3HbA1C=0 if (T3HbA1C>=T1HbA1C & T1HbA1C!=. & T3HbA1C!=.)
tab T1T3HbA1C
*********************************************************************************
gen T1T4HbA1C=.
replace T1T4HbA1C=1 if (T4HbA1C<T1HbA1C & T1HbA1C!=. & T4HbA1C!=.)
replace T1T4HbA1C=0 if (T4HbA1C>=T1HbA1C & T1HbA1C!=. & T4HbA1C!=.)
tab T1T4HbA1C
*********************************************************************************

gen T1T2SBP=.
replace T1T2SBP=1 if (T2SBP<T1SBP & T1SBP!=. & T2SBP!=.)
replace T1T2SBP=0 if (T2SBP>=T1SBP & T1SBP!=. & T2SBP!=.)
tab T1T2SBP
*********************************************************************************

gen T1T3SBP=.
replace T1T3SBP=1 if (T3SBP<T1SBP & T1SBP!=. & T3SBP!=.)
replace T1T3SBP=0 if (T3SBP>=T1SBP & T1SBP!=. & T3SBP!=.)
tab T1T3SBP

*********************************************************************************

gen T1T4SBP=.
replace T1T4SBP=1 if (T4SBP<T1SBP & T1SBP!=. & T4SBP!=.)
replace T1T4SBP=0 if (T4SBP>=T1SBP & T1SBP!=. & T4SBP!=.)
tab T1T4SBP
*********************************************************************************

gen T1T2DBP=.
replace T1T2DBP=1 if (T2DBP<T1DBP & T1DBP!=. & T2DBP!=.)
replace T1T2DBP=0 if (T2DBP>=T1DBP & T1DBP!=. & T2DBP!=.)
tab T1T2DBP

*********************************************************************************
gen T1T3DBP=.
replace T1T3DBP=1 if (T3DBP<T1DBP & T1DBP!=. & T3DBP!=.)
replace T1T3DBP=0 if (T3DBP>=T1DBP & T1DBP!=. & T3DBP!=.)
tab T1T3DBP

*********************************************************************************
gen T1T4DBP=.
replace T1T4DBP=1 if (T4DBP<T1DBP & T1DBP!=. & T4DBP!=.)
replace T1T4DBP=0 if (T4DBP>=T1DBP & T1DBP!=. & T4DBP!=.)
tab T1T4DBP
*********************************************************************************

gen T1T2PULSE=.
replace T1T2PULSE=1 if (T2Pulse<T1Pulse & T1Pulse!=. & T2Pulse!=.)
replace T1T2PULSE=0 if (T2DBP>=T1Pulse & T1Pulse!=. & T2Pulse!=.)
tab T1T2PULSE
*********************************************************************************

gen T1T3PULSE=.
replace T1T3PULSE=1 if (T3Pulse<T1Pulse & T1Pulse!=. & T3Pulse!=.)
replace T1T3PULSE=0 if (T3Pulse>=T1Pulse & T1Pulse!=. & T3Pulse!=.)
tab T1T3PULSE
*********************************************************************************

gen T1T4PULSE=.
replace T1T4PULSE=1 if (T4Pulse<T1Pulse & T1Pulse!=. & T4Pulse!=.)
replace T1T4PULSE=0 if (T4Pulse>=T1Pulse & T1Pulse!=. & T4Pulse!=.)
tab T1T4PULSE
*********************************************************************************

tab T1T2BMI T1T2HbA1C 
tab T1T2BMI T1T2SBP
tab T1T2BMI T1T2DBP
tab T1T2BMI T1T2PULSE
*********************************************************************************

tab T1T3BMI T1T3HbA1C 
tab T1T3BMI T1T3SBP
tab T1T3BMI T1T3DBP
tab T1T3BMI T1T3PULSE
*********************************************************************************

tab T1T4BMI T1T4HbA1C 
tab T1T4BMI T1T4SBP
tab T1T4BMI T1T4DBP
tab T1T4BMI T1T4PULSE

gen T1T2BP=.
replace T1T2BP = 1 if T2SBP<T1SBP
replace T1T2BP = 0 if T2DBP<T1DBP
tab T1T2BP, missing
*********************************************************
gen T1T3BP=.
replace T1T3BP = 1 if T3SBP<T1SBP
replace T1T3BP = 0 if T3DBP<T1DBP
tab T1T3BP, missing
*********************************************************
gen T1T4BP=.
replace T1T4BP = 1 if T4SBP<T1SBP
replace T1T4BP = 0 if T4DBP<T1DBP
tab T1T4BP, missing
