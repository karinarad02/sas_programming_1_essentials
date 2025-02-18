/* Level 2 Practice: Subsetting by Multiple Conditions and Creating a Sorted SAS Table */
/* The np_species table includes one row for each species that is found in each national park. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. */

/* Write a DATA step to read the pg1.np_species table and create a new table named fox. */
/* Note: If you are using SAS Studio, try creating fox as a permanent table in the EPG1V2/output folder. */

/* Include only the rows where Category is Mammal and Common_Names includes Fox in any case. */

/* Exclude the Category, Record_Status, Occurrence, and Nativeness columns. */

/* Run the program. */

/* Solution: */
/* * if you are creating a permanent table, you must submit a LIBNAME statement and then reference out.fox; */
/* * libname out "path-to-EPG1V2/output"; */

data fox;
    set pg1.np_species;
    where Category='Mammal' and upcase(Common_Names) like '%FOX%';  
    drop Category Record_Status Occurrence Nativeness;
run;
		

/* Notice that Fox Squirrels are included in the output table. Add a condition in the WHERE statement to exclude rows that include Squirrel. Submit the program and verify the results. */

/* Solution: */

data fox;
    set pg1.np_species;
    where Category='Mammal' and upcase(Common_Names) like '%FOX%' 
        and upcase(Common_Names) not like '%SQUIRREL%';    
    drop Category Record_Status Occurrence Nativeness;
run;
		

/* Sort the fox table by Common_Names. */

/* Solution: */

data fox;
    set pg1.np_species;
    where Category='Mammal' and upcase(Common_Names) like '%FOX%' 
        and upcase(Common_Names) not like '%SQUIRREL%';    
    drop Category Record_Status Occurrence Nativeness;
run;

proc sort data=fox;
    by Common_Names;
run;
		

/* What is the value of Common_Names in row one? */

/* Solution: */
/* Arctic Fox */