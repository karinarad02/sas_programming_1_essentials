/* Challenge Practice: Creating a New Column with the SCAN Function */
/* Access SAS Help to learn about the SCAN function. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. */

/* Create a new temporary table named np_summary2 that is based on pg1.np_summary. */
/* Use the SCAN function to create a new column named ParkType that is the last word in the ParkName column. Use a negative number for the second argument to count words from right to left in the character string. */
/* Keep Reg, Type, ParkName, and ParkType in the output table. */
/* Submit the program and view the output data. */

/* Solution: */
data np_summary2;
    set pg1.np_summary;
    ParkType=scan(parkname,-1);
    keep Reg Type ParkName ParkType;
run;

/* What is the value of ParkType in row four? */

/* Solution: */
/* Preserve */
