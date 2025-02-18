/* Level 1 Practice: Creating a Listing Report for Missing Data */
/* Use PROC PRINT and the WHERE statement to examine the pg1.eu_occ table. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. */

/* Write a PROC PRINT step to read the pg1.eu_occ table. */
/* Use a WHERE statement to list rows where Hotel, ShortStay, and Camp are missing. */
/* Submit the program. */

/* Solution: */
proc print data=pg1.eu_occ;
    where Hotel is missing and ShortStay is missing and 
          Camp is missing;
run;

/* How many rows are included? */

/* Solution: */
/* The SAS log shows that 101 rows are included. */

/* Modify the WHERE statement to list rows with Hotel values greater than 40,000,000. Submit the program. */

/* Solution: */
proc print data=pg1.eu_occ;
    where Hotel > 40000000;
run;

/* Which months are included in the report? */

/* Solution: */
/* The months 07 (July) and 08 (August) are included. */