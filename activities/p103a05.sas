***********************************************************;
*  Activity 3.05                                          *;
*    1) Highlight the PROC PRINT step and run the         *;
*       selected code. Notice how the values of Lat, Lon, *;
*       StartDate, and EndDate are displayed in the       *;
*       report.                                           *;
*    2) Change the width of the DATE format to 7 and run  *;
*       the PROC PRINT step. How does the display of      *;
*       StartDate and EndDate change?                     *;
*    3) Change the width of the DATE format to 11 and run *;
*       the PROC PRINT step. How does the display of      *;
*       StartDate and EndDate change?                     *;
*    4) Highlight the PROC FREQ step and run the selected *;
*       code. Notice that the report includes the number  *;
*       of storms for each StartDate.                     *;
*    5) Add a FORMAT statement to apply the MONNAME.      *;
*       format to StartDate and run the PROC FREQ step.   *;
*       How many rows are in the report?                  *;
***********************************************************;

proc print data=pg1.storm_summary(obs=20);
	format Lat Lon 4. StartDate EndDate date9.;
run;

/* 2) DATE7. displays a 2-digit year*/
proc print data=pg1.storm_summary(obs=20);
	format Lat Lon 4. StartDate EndDate date7.;
run;

/* 3) DATE11. displays a 4-digit year and adds dashes*/
proc print data=pg1.storm_summary(obs=20);
	format Lat Lon 4. StartDate EndDate date11.;
run;

proc freq data=pg1.storm_summary order=freq;
	tables StartDate;
	*Add a FORMAT statement;
run;

/* 5) The new report has 12 rows. Formats are an easy way to group data in procedures!*/
proc freq data=pg1.storm_summary order=freq;
    tables StartDate;
    format startdate monname.;
run;
