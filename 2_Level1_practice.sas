/* Level 1 Practice: Importing Excel Data from a Single Worksheet */
/* Create a table that contains a copy of the data that is in an Excel workbook. The Excel workbook contains a single worksheet. */
/*  */
/* Open p102p01.sas from the practices folder. */
/*  */
/* Complete the PROC IMPORT step to read eu_sport_trade.xlsx. */
/* Create a SAS table named eu_sport_trade and replace the table if it exists. */

/* Solution: */
/* Replace FILEPATH with the path to your EPG1V2/data folder. If you are using Enterprise Guide, replace FILEPATH with &path. */
proc import datafile="/home/u63838696/EPG1V2/data/eu_sport_trade.xlsx"
            dbms=xlsx
            out=eu_sport_trade
            replace;
run;

/* Modify the PROC CONTENTS code to display the descriptor portion of the eu_sport_trade table. */

/* Solution: */
proc contents data=eu_sport_trade;
run;

/* Submit the program, and then view the output data and the results. How many variables are in the eu_sport_trade table? */

/* Solution: */
/* The table has six variables: Amt_Export, Amt_Import, Country, Geo_Code, Sport_Product, and Year. */