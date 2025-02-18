/* Challenge Practice: Eliminating Case Sensitivity in WHERE Conditions */
/* Character comparisons in a WHERE statement are case sensitive. Use SAS functions to make comparisons case insensitive. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open the pg1.np_traffic table. Notice that the case of Location values is inconsistent. */


/* Write a PROC PRINT step that lists ParkName, Location, and Count. Print rows where Count is not equal to 0 and Location includes MAIN ENTRANCE. Submit the program. Use the log to confirm that 38 rows are listed. */

/* Note: If you use double quotation marks in the WHERE statement, you receive a warning in the log. To eliminate the warning, use single quotation marks. */

/* Solution: */
proc print data=pg1.np_traffic;
    var ParkName Location Count;
    where Count ne 0 and Location like '%MAIN ENTRANCE%';
run;

/* The UPCASE function can be used to eliminate case sensitivity in character WHERE expressions. Use the UPCASE function on the Location column to include any case of MAIN ENTRANCE. Submit the program and verify that 40 rows are listed. */

/* UPCASE(column) */

/* Note: The UPCASE function in a WHERE statement does not permanently convert the values of the column to uppercase. */

/* Solution: */
proc print data=pg1.np_traffic;
    var ParkName Location Count;
    where Count ne 0 and upcase(Location) like '%MAIN ENTRANCE%';
run;
