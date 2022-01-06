drop if T1BMI==.
drop if T2BMI==.
drop if T3BMI==.
drop if T4BMI==.
drop if T1SBP==.
drop if T2SBP==.
drop if T3SBP==.
drop if T4SBP==.
drop if T1DBP==.
drop if T2DBP==.
drop if T3DBP==.
drop if T4DBP==.
drop if T1Pulse==.
drop if T2Pulse==.
drop if T3Pulse==.
drop if T4Pulse==.
drop if T1HbA1C==.
drop if T2HbA1C==.
drop if T3HbA1C==.
drop if T4HbA1C==.
###############################################################################
I used this 

#########################

#PRE to POST#############
#########################
gen T12BMI_dummy=0
gen T12SBP_dummy=0
gen T12DBP_dummy=0
gen T12PULSE_dummy=0
gen T12HBA1C_dummy=0


replace T12BMI_dummy=1 if(T1BMI > 24.9 & T2BMI < T1BMI)

replace T12SBP_dummy=1 if (T1SBP > 120 & T2SBP <T1SBP)

replace T12DBP_dummy=1 if (T1DBP > 80 & T2DBP < T1DBP)

replace T12PULSE_dummy=1 if (T1Pulse < 78 & T2Pulse >T1Pulse)

replace T12HBA1C_dummy=1 if(T1HbA1C > 5.7 & T2HbA1C <T1HbA1C)

tab T12BMI_dummy
tab T12SBP_dummy
tab T12DBP_dummy
tab T12PULSE_dummy
tab T12HBA1C_dummy

###########################################################################
#PRE to 6MONTHS#############
#########################
gen T13BMI_dummy=0
gen T13SBP_dummy=0
gen T13DBP_dummy=0
gen T13PULSE_dummy=0
gen T13HBA1C_dummy=0


replace T13BMI_dummy=1 if(T1BMI >= 24.9 & T3BMI <T1BMI)

replace T13SBP_dummy=1 if (T1SBP > 120 & T3SBP <T1SBP)

replace T13DBP_dummy=1 if (T1DBP > 80 & T3DBP <T1DBP)

replace T13PULSE_dummy=1 if (T1Pulse < 78 & T3Pulse >T1Pulse)

replace T13HBA1C_dummy=1 if(T1HbA1C > 5.7 & T3HbA1C < T1HbA1C)

tab T13BMI_dummy
tab T13SBP_dummy
tab T13DBP_dummy
tab T13PULSE_dummy
tab T13HBA1C_dummy
###########################################################################
#PRE to 1YR#############
#########################
gen T14BMI_dummy=0
gen T14SBP_dummy=0
gen T14DBP_dummy=0
gen T14PULSE_dummy=0
gen T14HBA1C_dummy=0

replace T14BMI_dummy=1 if(T1BMI >= 24.9 & T4BMI <T1BMI)

replace T14SBP_dummy=1 if (T1SBP > 120 & T4SBP <T1SBP)

replace T14DBP_dummy=1 if (T1DBP > 80 & T4DBP <T1DBP)

replace T14PULSE_dummy=1 if (T1Pulse < 78 & T4Pulse >T1Pulse)

replace T14HBA1C_dummy=1 if(T1HbA1C > 5.7 & T4HbA1C <T1HbA1C)

tab T14BMI_dummy
tab T14SBP_dummy
tab T14DBP_dummy
tab T14PULSE_dummy
tab T14HBA1C_dummy
###########################################################################

gen T23BMI_dummy=0
gen T23SBP_dummy=0
gen T23DBP_dummy=0
gen T23PULSE_dummy=0
gen T23HBA1C_dummy=0

replace T23BMI_dummy=1 if(T2BMI >= 24.9 & T3BMI <T2BMI)

replace T23SBP_dummy=1 if (T2SBP > 120 & T3SBP <T2SBP)

replace T23DBP_dummy=1 if (T2DBP > 80 & T3DBP <T2DBP)

replace T23PULSE_dummy=1 if (T2Pulse < 78 & T3Pulse >T2Pulse)

replace T23HBA1C_dummy=1 if(T2HbA1C > 5.7 & T3HbA1C <= T2HbA1C)

tab T23BMI_dummy
tab T23SBP_dummy
tab T23DBP_dummy
tab T23PULSE_dummy
tab T23HBA1C_dummy

###########################################################################
gen T24BMI_dummy=0
gen T24SBP_dummy=0
gen T24DBP_dummy=0
gen T24PULSE_dummy=0
gen T24HBA1C_dummy=0

replace T24BMI_dummy=1 if(T2BMI >= 24.9 & T4BMI <T2BMI)

replace T24SBP_dummy=1 if(T2SBP > 120 & T4SBP <T2SBP)

replace T24DBP_dummy=1 if(T2DBP > 80 & T4DBP <T2DBP)

replace T24PULSE_dummy=1 if (T2Pulse < 78 & T4Pulse >T2Pulse)

replace T24HBA1C_dummy=1 if(T2HbA1C > 5.7 & T4HbA1C <T2HbA1C)


tab T24BMI_dummy
tab T24SBP_dummy
tab T24DBP_dummy
tab T24PULSE_dummy
tab T24HBA1C_dummy

###########################################################################

gen T34BMI_dummy=0
gen T34SBP_dummy=0
gen T34DBP_dummy=0
gen T34PULSE_dummy=0
gen T34HBA1C_dummy=0

replace T34BMI_dummy=1 if(T3BMI >= 24.9 & T4BMI <=T3BMI)

replace T34SBP_dummy=1 if(T3SBP > 120 & T4SBP <T3SBP)

replace T34DBP_dummy=1 if(T3DBP > 80 & T4DBP <T3DBP)

replace T34PULSE_dummy=1 if(T3Pulse < 78 & T4Pulse >T3Pulse)

replace T34HBA1C_dummy=1 if(T3HbA1C > 5.7 & T4HbA1C <T3HbA1C)

tab T34BMI_dummy
tab T34SBP_dummy
tab T34DBP_dummy
tab T34PULSE_dummy
tab T34HBA1C_dummy
