/* Level 2 Practice: Creating New Columns with Character and Date Functions */
/* The pg1.eu_occ table contains individual columns for nights spent at hotels, short-stay accommodations, or camps for each year and month. The YearMon column is character. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Write a DATA step to create a temporary table named eu_occ_total that is based on the pg1.eu_occ table. */

/* Create the following new columns: */
/* Year: the four-digit year extracted from YearMon */
/* Month: the two-digit month extracted from YearMon */
/* ReportDate: the first day of the reporting month */
/* Note: Use the MDY function and the new Year and Month columns */
/* Total: the total nights spent at any establishment */
/* Format Hotel, ShortStay, Camp, and Total with commas. Format ReportDate to display the values in the form JAN2018. */
/* Keep Country, Hotel, ShortStay, Camp, ReportDate, and Total in the new table. */
/* Submit the program and view the output data. */

/* Solution: */
data eu_occ_total;
    set pg1.eu_occ;
    Year=substr(YearMon,1,4);
    Month=substr(YearMon,6,2);
    ReportDate=MDY(Month,1,Year);
    Total=sum(Hotel,ShortStay,Camp);
    format Hotel ShortStay Camp Total comma17.
           ReportDate monyy7.;
    keep Country Hotel ShortStay Camp ReportDate Total;
run;

/* What is the value of ReportDate in row one? */

/* Solution: */
/* SEP2017 */