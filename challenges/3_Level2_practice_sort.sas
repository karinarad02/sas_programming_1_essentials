/* Level 2 Practice: Sorting Data to Remove Duplicate Rows */
/* The pg1.np_largeparks table contains gross acreage for large national parks. There are duplicate rows for some locations. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open and review the pg1.np_largeparks table. Notice that there are exact duplicate rows for some parks. */


/* Create a new program. */

/* Write a PROC SORT step that creates two tables (park_clean and park_dups), and removes the duplicate rows. */
/* Submit the program and view the output data. */

/* Solution: */
proc sort data=pg1.np_largeparks
		  out=park_clean
		  dupout=park_dups
		  nodupkey;
    by _all_;
run;

/* How many rows are included in the park_dups table? */

/* Solution: */
/* 30 */
