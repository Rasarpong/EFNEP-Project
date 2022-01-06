Codes for determining ONB graduates
import excel "C:\Users\Kwabena	Sarpong\OneDrive\Graduate	School\EFNEP	RESEARCH\EFNEP	DATA\colorado\Colorado	recalls_FPC_Biometrics.xlsx",	s
> heet("Sheet1") firstrow

drop if T1Height==.
drop if T2Height==.
drop if T3Height==.
drop if T4Height==.
drop if T1Weight==.
drop if T2Weight==.
drop if T3Weight==.
drop if T4Weight==.
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
drop if Food_Energy_entry==.
drop if Food_Energy_exit==.
#####################################################################################
generate colon_pre_dummy=0
generate heart_pre_dummy=0
gen diabeties_pre_dummy=0
gen obesity_pre_dummy=0
gen osteo_pre_dummy=0
gen strokehyp_pre_dummy=0
gen foodborn_pre_dummy=0
gen infant_disease_pre_dummy=0
#####################################################################################
## NORMAL GRADUATES - PRE ##
###############################
replace colon_pre_dummy =1 if (Total_Fat_entry<=78 & SatFat_entry<=22 & Total_Fiber_entry>=25 & fv_entry>=4.5 & pre_q07>=4 & pre_q09>=4)
replace diabeties_pre_dummy =1 if (Total_Fiber_entry>=25 & Food_Energy_entry<=2300 & Carbohydrates_entry<=325 & pre_q07>=4 & pre_q09>=4)
replace heart_pre_dummy =1 if (Total_Fat_entry<=78 & SatFat_entry<=22 & Total_Fiber_entry>=25 & fv_entry>=4.5 & pre_q08>=4 & pre_q09>=4)
replace obesity_pre_dummy = 1 if (Total_Fat_entry<=86 & fv_entry>=4.5 & Total_Fiber_entry>=25 & SatFat_entry<=24 & Food_Energy_entry<=2300 & pre_q07>=4 & pre_q09>=4)
replace strokehyp_pre_dummy = 1 if (fv_entry>=4.5 & Calcium_entry>=1000 & pre_q08>=4 & pre_q09>=4)
replace osteo_pre_dummy = 1 if (Calcium_entry>=1000 & Diary_entry>=3 & pre_q07>=4)
replace foodborn_pre_dummy = 1 if (pre_q05<=2 & pre_q06<=2)
replace infant_disease_pre_dummy = 1 if(pre_q07>=4)
#####################################################################################
## PREGNANT GRADUATES - PRE##
#############################
replace colon_pre_dummy =1 if (pregnant==1 & Total_Fat_entry<=101 & SatFat_entry<=29 & Total_Fiber_entry>=28 & fv_entry>=5 & pre_q07>=4 & pre_q09>=4)
replace diabeties_pre_dummy =1 if (pregnant==1 & Total_Fiber_entry>=28 & Food_Energy_entry<=2600 & Carbohydrates_entry<=423 & pre_q07>=4 & pre_q09>=4)
replace heart_pre_dummy =1 if (pregnant==1 & Total_Fat_entry<=101 & SatFat_entry<=29 & Total_Fiber_entry>=28 & fv_entry>=5 & pre_q08>=4 & pre_q09>=4)
replace obesity_pre_dummy = 1 if (pregnant==1 & Total_Fat_entry<=101 & fv_entry>=5 & Total_Fiber_entry>=28 & SatFat_entry<=29 & Food_Energy_entry<=2600 & pre_q07>=4 & pre_q09>=4)
replace strokehyp_pre_dummy = 1 if (pregnant==1 & fv_entry>=5 & Calcium_entry>=1000 & pre_q08>=4 & pre_q09>=4)
replace osteo_pre_dummy = 1 if (pregnant==1 & Calcium_entry>=1000 & Diary_entry>=3 & pre_q07>=4)
replace foodborn_pre_dummy = 1 if (pregnant==1 & pre_q05<=2 & pre_q06<=2)
replace infant_disease_pre_dummy = 1 if(pregnant==1 & pre_q07>=4)
###########################################################################
## NURSING GRADUATES - PRE ##
############################
replace colon_pre_dummy =1 if (Nursing==1 & Total_Fat_entry<=101 & SatFat_entry<=29 & Total_Fiber_entry>=28 & fv_entry>=5 & pre_q07>=4 & pre_q09>=4)
replace diabeties_pre_dummy =1 if (Nursing==1 & Total_Fiber_entry>=28 & Food_Energy_entry<=2500 & Carbohydrates_entry<=423 & pre_q07>=4 & pre_q09>=4)
replace heart_pre_dummy =1 if (Nursing==1 & Total_Fat_entry<=101 & SatFat_entry<=29 & Total_Fiber_entry>=28 & fv_entry>=5 & pre_q08>=4 & pre_q09>=4)
replace obesity_pre_dummy = 1 if (Nursing==1 & Total_Fat_entry<=101 & fv_entry>=5 & Total_Fiber_entry>=28 & SatFat_entry<=29 & Food_Energy_entry<=2500 & pre_q07>=4 & pre_q09>=4)
replace strokehyp_pre_dummy = 1 if (Nursing==1 & fv_entry>=5 & Calcium_entry>=1000 & pre_q08>=4 & pre_q09>=4)
replace osteo_pre_dummy = 1 if (Nursing==1 & Calcium_entry>=1000 & Diary_entry>=3 & pre_q07>=4)
replace foodborn_pre_dummy = 1 if (Nursing==1 & pre_q05<=2 & pre_q06<=2)
replace infant_disease_pre_dummy = 1 if(Nursing==1 & pre_q07>=4)
###########################################################################
generate colon_post_dummy=0
generate heart_post_dummy=0
gen diabeties_post_dummy=0
gen obesity_post_dummy=0
gen osteo_post_dummy=0
gen strokehyp_post_dummy=0
gen foodborn_post_dummy=0
gen infant_disease_post_dummy=0
#####################################################################################
## NORMAL GRADUATES - POST##
##########################
replace colon_post_dummy =1 if (Total_Fat_exit<=78 & SatFat_exit<=22 & Total_Fiber_exit>=25 & fv_exit>=4.5 & post_q07>=4 & post_q09>=4)
replace diabeties_post_dummy =1 if (Total_Fiber_exit>=25 & Food_Energy_exit<=2300 & Carbohydrates_exit<=325 & post_q07>=4 & post_q09>=4)
replace heart_post_dummy =1 if (Total_Fat_exit<=78 & SatFat_exit<=22 & Total_Fiber_exit>=25 & fv_exit>=4.5 & post_q08>=4 & post_q09>=4)
replace obesity_post_dummy = 1 if (Carbohydrates_exit<=325 & fv_exit>=4.5 & Total_Fiber_exit>=25 & SatFat_exit<=22 & Total_Fat_exit<=78 & post_q07>=4 & post_q09>=4)
replace strokehyp_post_dummy = 1 if (fv_exit>=4.5 & Calcium_exit>=1000 & post_q08>=4 & post_q09>=4)
replace osteo_post_dummy = 1 if (Calcium_exit>=1000 & Dairy_exit>=3 & post_q07>=4)
replace foodborn_post_dummy = 1 if (post_q05<=2 & post_q06<=2)
replace infant_disease_post_dummy = 1 if(post_q07>=4)
#####################################################################################
##PREGNANT GRADUATES - POST ##
##############################
replace colon_post_dummy =1 if (pregnant==1 & Total_Fat_exit<=101 & SatFat_exit<=29 & Total_Fiber_exit>=28 & fv_exit>=5 & post_q07>=4 & post_q09>=4)
replace diabeties_post_dummy =1 if (pregnant==1 & Total_Fiber_exit>=28 & Food_Energy_exit<=2600 & Carbohydrates_exit<=423 & post_q07>=4 & post_q09>=4)
replace heart_post_dummy =1 if (pregnant==1 & Total_Fat_exit<=101 & SatFat_exit<=29 & Total_Fiber_exit>=28 & fv_exit>=5 & post_q08>=4 & post_q09>=4)
replace obesity_post_dummy = 1 if (pregnant==1 & Total_Fat_exit<=101 & fv_exit>=5 & Total_Fiber_exit>=28 & SatFat_exit<=29 & Food_Energy_exit<=2600 & post_q07>=4 & post_q09>=4)
replace strokehyp_post_dummy = 1 if (pregnant==1 & fv_exit>=5 & Calcium_exit>=1000 & post_q08>=4 & post_q09>=4)
replace osteo_post_dummy = 1 if (pregnant==1 & Calcium_exit>=1000 & Dairy_exit>=3 & post_q07>=4)
replace foodborn_post_dummy = 1 if (pregnant==1 & post_q05<=2 & post_q06<=2)
replace infant_disease_post_dummy = 1 if(pregnant==1 & post_q07>=4)
#####################################################################################
## NURSING GRADUATES - POST ##
#############################
replace colon_post_dummy =1 if (Nursing==1 & Total_Fat_exit<=101 & SatFat_exit<=29 & Total_Fiber_exit>=28 & fv_exit>=5 & post_q07>=4 & post_q09>=4)
replace diabeties_post_dummy =1 if (Nursing==1 & Total_Fiber_exit>=28 & Food_Energy_exit<=2500 & Carbohydrates_exit<=423 & post_q07>=4 & post_q09>=4)
replace heart_post_dummy =1 if (Nursing==1 & Total_Fat_exit<=101 & SatFat_exit<=29 & Total_Fiber_exit>=28 & fv_exit>=5 & post_q08>=4 & post_q09>=4)
replace obesity_post_dummy = 1 if (Nursing==1 & Total_Fat_exit<=101 & fv_exit>=5 & Total_Fiber_exit>=28 & SatFat_exit<=29 & Food_Energy_exit<=2500 & post_q07>=4 & post_q09>=4)
replace strokehyp_post_dummy = 1 if (Nursing==1 & fv_exit>=5 & Calcium_exit>=1000 & post_q08>=4 & post_q09>=4)
replace osteo_post_dummy = 1 if (Nursing==1 & Calcium_exit>=1000 & Dairy_exit>=3 & post_q07>=4)
replace foodborn_post_dummy = 1 if (Nursing==1 & post_q05<=2 & post_q06<=2)
replace infant_disease_post_dummy = 1 if(Nursing==1 & post_q07>=4)
#####################################################################################
generate colon_change_dummy=0
generate heart_change_dummy=0
gen diabeties_change_dummy=0
gen obesity_change_dummy=0
gen osteo_change_dummy=0
gen strokehyp_change_dummy=0
gen foodborn_change_dummy=0
gen infant_disease_change_dummy=0
#####################################################################################
replace colon_change_dummy=1 if (colon_pre_dummy == 0 & colon_post_dummy == 1)
replace heart_change_dummy=1 if (heart_pre_dummy==0 & heart_post_dummy==1)
replace diabeties_change_dummy=1 if (diabeties_pre_dummy==0 & diabeties_post_dummy==1)
replace obesity_change_dummy=1 if (obesity_pre_dummy==0 & obesity_post_dummy==1)
replace osteo_change_dummy=1 if (osteo_pre_dummy==0 & osteo_post_dummy==1)
replace strokehyp_change_dummy=1 if (strokehyp_pre_dummy==0 & strokehyp_post_dummy==1)
replace foodborn_change_dummy=1 if (foodborn_pre_dummy==0 & foodborn_post_dummy==1)
replace infant_disease_change_dummy=1 if (infant_disease_pre_dummy==0 & infant_disease_post_dummy==1)
#####################################################################################
tab colon_change_dummy
tab heart_change_dummy
tab diabeties_change_dummy
tab obesity_change_dummy
tab osteo_change_dummy
tab strokehyp_change_dummy
tab foodborn_change_dummy
tab infant_disease_change_dummy

tab colon_pre_dummy
tab heart_pre_dummy
tab diabeties_pre_dummy
tab obesity_pre_dummy
tab osteo_pre_dummy
tab strokehyp_pre_dummy
tab foodborn_pre_dummy
tab infant_disease_pre_dummy


tab colon_post_dummy
tab heart_post_dummy
tab diabeties_post_dummy
tab obesity_post_dummy
tab osteo_post_dummy
tab strokehyp_post_dummy
tab foodborn_post_dummy
tab infant_disease_post_dummy
