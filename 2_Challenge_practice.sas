/* Challenge Practice: Importing Data with a Specific Delimiter */
/* Create a table from np_traffic.dat. The values in the text file are delimited with a pipe (that is, a vertical bar). */

/* Open the SAS Procedures Guide and go to the documentation for the IMPORT Procedure. Review the syntax and examples to determine how to read a file that is delimited with a specific symbol. */


/* Use PROC IMPORT to import the np_traffic.dat file and create the temporary traffic2 SAS table. Submit the program and view the output data. How many columns are in the table? */

/* Solution: */
/* Replace FILEPATH with the path to your EPG1V2/data folder. If you are using Enterprise Guide, replace FILEPATH with &path. */
proc import datafile="/home/u63838696/EPG1V2/data/np_traffic.dat"
            dbms=dlm
            out=traffic2
            replace;
    guessingrows=3000;
    delimiter="|";
run;
/* The traffic2 table contains 7 columns and 2784 rows. */