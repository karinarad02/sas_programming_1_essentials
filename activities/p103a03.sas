***********************************************************;
*  Activity 3.03                                          *;
*    1) Change the value in the %LET statement from NA to *;
*       SP.                                               *;
*    2) Run the program and carefully read the log.       *;
*       Which procedure did not produce a report?         *;
*       What is different about the WHERE statement in    *;
*       that step?                                        *;
***********************************************************;

%let BasinCode=NA;

/* 1) */
%let BasinCode=SP;

proc means data=pg1.storm_summary;
	where Basin="&BasinCode";
	var MaxWindMPH MinPressure;
run;

proc freq data=pg1.storm_summary;
	where Basin='&BasinCode';
	tables Type;
run;

/*
2)
PROC FREQ did not produce a report. A note in the log indicates that No observations were selected.

The difference in the WHERE statement in that step is that single quotation marks were used around the macro variable &BasinCode rather than double quotation marks. Double quotation marks must be used around macro variables.
*/