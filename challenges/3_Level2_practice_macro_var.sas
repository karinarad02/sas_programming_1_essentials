/* Level 2 Practice: Using Macro Variables to Subset Data in Procedures */
/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. */

/* Write a PROC FREQ step to analyze rows from pg1.np_species. */
/* Include only rows where Species_ID starts with YOSE (Yosemite National Park) and Category equals Mammal. */
/* Generate frequency tables for Abundance and Conservation_Status. */

/* Solution: */
proc freq data=pg1.np_species;
    tables Abundance Conservation_Status;
    where Species_ID like "YOSE%" and
          Category="Mammal";
run;

/* Write a PROC PRINT step to list the same subset of rows from pg1.np_species. */

/* Include Species_ID, Category, Scientific_Name, and Common_Names in the report. */
/* Run the program. */

/* Solution: */
proc print data=pg1.np_species;
    var Species_ID Category Scientific_Name Common_Names;
    where Species_ID like "YOSE%" and
          Category="Mammal";
run;

/* How many rows meet the two specified conditions? */

/* Solution: */
/* 16 */

/* Create a macro variable named ParkCode to store YOSE, and another macro variable named SpeciesCat to store Mammal. Modify the code to reference the macro variables. Submit the program and confirm that the same results are generated. */

/* Note: The macro variable values are case sensitive when they are used in a WHERE statement. */

/* Solution: */
%let ParkCode=YOSE;
%let SpeciesCat=Mammal;

proc freq data=pg1.np_species;
    tables Abundance Conservation_Status;
    where Species_ID like "&ParkCode%" and
          Category="&SpeciesCat";
run;

proc print data=pg1.np_species;
    var Species_ID Category Scientific_Name Common_Names;
    where Species_ID like "&ParkCode%" and
          Category="&SpeciesCat";
run;
/* The same results are generated. */

/* Change the values of the macro variables to ZION (Zion National Park) and Bird. Submit the program. */

/* Solution: */
%let ParkCode=ZION;
%let SpeciesCat=Bird;

proc freq data=pg1.np_species;
    tables Abundance Conservation_Status;
    where Species_ID like "&ParkCode%" and
          Category="&SpeciesCat";
run;

proc print data=pg1.np_species;
    var Species_ID Category Scientific_Name Common_Names;
    where Species_ID like "&ParkCode%" and
          Category="&SpeciesCat";
run;

/* How many rows meet the two specified conditions? */

/* Solution: */
/* 46 */
