/* Level 1 Practice: Creating a SAS Table */
/* The pg1.eu_occ SAS table contains monthly occupancy rates for European countries from January 2004 through September 2017. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open the pg1.eu_occ table and examine the column names and values. */


/* Open p104p01.sas from the practices folder. */

/* Modify the code to create a temporary table named eu_occ2016 and read pg1.eu_occ. */
/* Complete the WHERE statement to select only the stays that were reported in 2016. Notice that YearMon is a character column and the first four positions represent the year. */
/* Complete the FORMAT statement to apply the COMMA17. format to the Hotel, ShortStay, and Camp columns. */
/* Complete the DROP statement to exclude Geo from the output table. */
/* Submit the program and view the output data. */
/* Confirm that there are 348 rows in the eu_occ2016 table. */

/* Solution: */
data eu_occ2016;
    set pg1.eu_occ;
    where YearMon like "2016%";
    format Hotel ShortStay Camp comma17.;
    drop geo;
run;
		
