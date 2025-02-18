
/* Challenge Practice: Generating Extreme Observations Output */
/* The pg1.eu_occ table includes monthly occupancy counts for European countries between January 2004 and September 2017. */

/* The SAS Output Delivery System (ODS) gives you options for controlling the type and format of the output that is generated by SAS code. The ODS SELECT statement is used to specify output objects for results. The ODS SELECT statement can be used to generate a report containing only the Extreme Observations output. */

/* Note: To specify an output object, you need to know which output objects your SAS program produces. The ODS TRACE statement writes to the SAS log a trace record that includes the path, the label, and other information about each output object that your SAS program produces. You can find documentation about the ODS TRACE and ODS SELECT statements in the SAS Help Facility and in the online documentation. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. Write a PROC UNIVARIATE step to examine Camp in the pg1.eu_occ table. */

/* Solution: */
proc univariate data=pg1.eu_occ;
    var camp;
run;

/* Add the ODS TRACE ON statement before the PROC UNIVARIATE step, and add the ODS TRACE OFF statement after the PROC UNIVARIATE step. Submit the program. */

/* Solution: */
ods trace on;
proc univariate data=pg1.eu_occ;
    var camp;
run;
ods trace off;

/* Examine the trace information in the SAS log. What is the name of the Extreme Observations output object? */

/* Solution: */
/* ExtremeObs */

/* Delete the ODS TRACE statements. Add an ODS SELECT statement immediately before the PROC UNIVARIATE step and provide the name of the Extreme Observation output object. Submit the program. */

/* Note: This method can be used with other procedures that create multiple tables (such as PROC CONTENTS) to select a portion of the output. */

/* Solution: */
ods select extremeobs;
proc univariate data=pg1.eu_occ;
    var camp;
run;

/* How many extreme observations are listed? */

/* Solution: */
/* The five lowest and highest extreme observations are listed. */

/* Using the SAS documentation or the syntax Help in the editor, identify the option that specifies the number of extreme observations that are listed in the table. Use the option to change the number of extreme observations from five to 10. Submit the program. */

/* Solution: */
ods select extremeobs;
proc univariate data=pg1.eu_occ nextrobs=10;
    var camp;
run;
