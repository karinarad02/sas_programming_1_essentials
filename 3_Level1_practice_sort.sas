/* Level 1 Practice: Sorting Data and Creating an Output Table */
/* Create the np_sort table that contains data for national parks. Sort the data by regional code and decreasing numbers of daily visitors. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open p103p08.sas from the practices folder. */

/* Modify the PROC SORT step to read pg1.np_summary and create a temporary, sorted table named np_sort. */
/* Add a BY statement to order the data by Reg and descending DayVisits values. */
/* Add a WHERE statement to select Type equal to NP. */
/* Submit the program and view the output data. */

/* Solution: */
proc sort data=pg1.np_summary out=np_sort;
    by Reg descending DayVisits;
    where Type="NP";
run;

/* How many rows are included in the np_sort table? */

/* Solution: */
/* 51 */