
/* Level 1 Practice: Exploring Data with Procedures */
/* The pg1.np_summary table contains public use statistics from the National Park Service. Use the PRINT, MEANS, UNIVARIATE, and FREQ procedures to explore the data for possible inconsistencies. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open p103p01.sas from the practices folder. */

/* Complete the PROC PRINT statement to list the first 20 observations in pg1.np_summary. */
/* Add a VAR statement to include only the following variables: Reg, Type, ParkName, DayVisits, TentCampers, and RVCampers. */
/* Highlight the step and run the selected code. */

/* Solution: */
proc print data=pg1.np_summary(obs=20);
    var Reg Type ParkName DayVisits TentCampers RVCampers;
run;

/* Do you observe any possible inconsistencies in the data? */

/* Solution: */
/* Yes. The Type column has inconsistencies. Notice that national preserve locations have the code PRE and PRESERVE. */

/* Copy the PROC PRINT step and paste it at the end of the program. */

/* Replace PRINT with MEANS and remove the OBS= data set option. */
/* Modify the VAR statement to calculate summary statistics for DayVisits, TentCampers, and RVCampers. */
/* Highlight the step and run the selected code. */

/* Solution: */
proc means data=pg1.np_summary;
    var DayVisits TentCampers RVCampers;
run;

/* What is the minimum value for tent campers? Is that value unexpected? */

/* Solution: */
/* The minimum value is zero. That value is not unexpected, because it's possible that a park had zero tent campers. */

/* Copy the PROC MEANS step and paste it at the end of the program. */

/* Replace MEANS with UNIVARIATE. */
/* Highlight the step and run the selected code. */

/* Solution: */
proc univariate data=pg1.np_summary;
    var DayVisits TentCampers RVCampers;
run;

/* Are there negative values for any of the columns? */

/* Solution: */
/* No. */

/* Copy the PROC UNIVARIATE step and paste it at the end of the program. */

/* Replace UNIVARIATE with FREQ. */
/* Replace the VAR statement with a TABLES statement to produce frequency tables for Reg and Type. */
/* Highlight the step and run the selected code. */

/* Solution: */
proc freq data=pg1.np_summary;
    tables Reg Type;
run;

/* Are there any lowercase codes? Are there any codes that occur only once in the table? */

/* Solution: */
/* There are no lowercase codes. NC, NPRE, and RIVERWAYS occur once in the table. */

/* Add comments before each step to document the program. Save the program as np_validate.sas in the output folder. */

Solution:
/*list first 20 rows*/
proc print data=pg1.np_summary(obs=20);
    var Reg Type ParkName DayVisits TentCampers RVCampers;
run;

/*calculate summary statistics*/
proc means data=pg1.np_summary;
    var DayVisits TentCampers RVCampers;
run;

/*examine extreme values*/
proc univariate data=pg1.np_summary;
    var DayVisits TentCampers RVCampers;
run;

/*list unique values and frequency counts*/
proc freq data=pg1.np_summary;
    tables Reg Type;
run;
