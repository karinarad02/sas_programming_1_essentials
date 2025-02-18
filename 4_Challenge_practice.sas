/* Challenge Practice: Creating a SAS Table Using Macro Variables */
/* The np_species table includes one row for each species that is found in each national park. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Write a new program that creates a temporary table named mammal that includes only the mammals from the pg1.np_species table. Do not include Abundance, Seasonality, or Conservation_Status in the output table. */

/* Solution: */
data mammal;
    set pg1.np_species;
    where Category="Mammal";
    drop Abundance Seasonality Conservation_Status;
run;		

/* Use PROC FREQ to determine how many mammal species there are for each unique value of Record_Status. Submit the program. */

/* Solution: */
proc freq data=mammal;
    tables Record_Status; 
run;		

/* What percentage of mammal species have a Record_Status value of Approved? */

/* Solution: */
/* 90.63% */

/* Modify the program to use a macro variable in place of the value Mammal so you can analyze other values of Category. Change the macro variable value to Bird and run the program. */

/* Solution: */
%let cat=Bird;

data &cat;
    set pg1.np_species;
    where Category="&cat";
    drop Abundance Seasonality Conservation_Status;
run;

proc freq data=&cat;
    tables Record_Status;
run;
		

/* What is the overall frequency of Bird species and how many are approved? */

/* Solution: */
/* The overall frequency is 2141, with 2060 approved. */
