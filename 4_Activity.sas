/* In your SAS software, open a new program window and perform the following tasks: */

/* Write a DATA step that reads the pg1.storm_summary table and creates an output table named Storm_cat5. Note: If you are using SAS Studio, try creating storm_cat5 as a permanent table in the EPG1V2/output folder. */

/* Include only Category 5 storms (MaxWindMPH greater than or equal to 156) with StartDate on or after 01JAN2000. */

/* Add a statement to include the following columns in the output data: Season, Basin, Name, Type, and MaxWindMPH. */

/* How many Category 5 storms have there been since January 1, 2000? */

data storm_cat5;
    set pg1.storm_summary;
    where StartDate>="01jan2000"d and MaxWindMPH>=156; 
    keep Season Basin Name Type MaxWindMPH; 
run;

/* There have been 18 Category 5 storms since January 1, 2000. */

/* Note: To create storm_cat5 as a permanent table in the EPG1V2/output folder, you would simply submit a LIBNAME statement to define a library and then reference the library on the DATA statement as in: */

libname out "path-to-EPG1V2/output";
data out.storm_cat5;
. . .
run;