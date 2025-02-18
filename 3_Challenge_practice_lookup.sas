/* Challenge Practice: Creating a Lookup Table from a Detailed Table */
/* The pg1.eu_occ table includes multiple rows from each country code and country name. Create a lookup table that includes a single row for each country code and name. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. */

/* Write a PROC SORT step to sort pg1.eu_occ and create an output table named countrylist. */
/* Remove duplicate key values. */
/* Sort by Geo and then Country. */
/* Submit the program and view the output data. */

/* Solution: */
proc sort data=pg1.eu_occ out=countryList 
          nodupkey;
    by Geo Country;
run;

/* What are the values of Geo and Country in row 1? How many columns are included in the table? */

/* Solution: */
/* The value of Geo is AT and the value of Country is Austria. Six columns are included. */

/* To read only Geo and Country from the pg1.eu_occ table, you can use the KEEP= data set option. Add the KEEP= option immediately after the input table and list Geo and Country. Submit the program and verify that only one row per country is included. */

/* data-set(KEEP=varlist) */

/* Solution: */
proc sort data=pg1.eu_occ(keep=geo country) out=countryList 
          nodupkey;
    by Geo Country;
run;
