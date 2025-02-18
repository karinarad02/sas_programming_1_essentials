/* Level 2 Practice: Importing Data from a CSV File */
/* Create a table from a comma-delimited CSV file. */

/* Create a new program. */

/* Write a PROC IMPORT step to read the np_traffic.csv file and create the traffic SAS table. */
/* Add a PROC CONTENTS step to view the descriptor portion of the newly created table. */
/* Submit the program. */

/* Solution: */
/* Replace FILEPATH with the path to your EPG1V2/data folder. If you are using Enterprise Guide, replace FILEPATH with &path. */

proc import datafile="/home/u63838696/EPG1V2/data/np_traffic.csv"
            dbms=csv
            out=traffic
            replace;
run;

proc contents data=traffic;
run;

/* Examine the data interactively. Scroll down to row 37. Notice that the values for ParkName and TrafficCounter seem to be truncated. */

/* Solution: */
/* The value shown for ParkName is City of Roc and the value shown for TrafficCounter is TRAFFIC COUNT AT CIRCLE CREEK. */

/* Modify the program to resolve this issue. Submit the program and verify that ParkName and TrafficCounter are no longer truncated. */

/* Solution: */
/* Replace FILEPATH with the path to your EPG1V2/data folder. If you are using Enterprise Guide, replace FILEPATH with &path. */

proc import datafile="/home/u63838696/EPG1V2/data/np_traffic.csv"
            dbms=csv
            out=traffic
            replace;
    guessingrows=max;
run;

proc contents data=traffic;
run;
/* The value of ParkName is City of Rocks NRES and the value of TrafficCounter is TRAFFIC COUNT AT CIRCLE CREEK ENTRANCE. */