/* Level 1 Practice: Filtering Rows in a Listing Report Using Character Data */
/* The pg1.np_summary table contains public use statistics from the National Park Service. The park type codes are inconsistent for national preserves. Examine these inconsistencies by producing a report that lists any national preserve. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open p103p04.sas from the practices folder. */

/* Add a WHERE statement to print only the rows where ParkName includes Preserve. ParkName contains character values, and these values are case sensitive. */
/* Submit the program and view the results. */

/* Note: If you use double quotation marks in the WHERE statement, you receive a warning in the log. To eliminate the warning, use single quotation marks. */

/* Solution: */
proc print data=pg1.np_summary;
    var Type ParkName;
    where ParkName like '%Preserve%';
run;

/* Which codes are used for preserves? */

/* Solution: */
/* PRE, PRESERVE, and NPRE */
