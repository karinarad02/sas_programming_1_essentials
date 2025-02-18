***********************************************************;
*  Activity 4.06                                          *;
*    1) Add a WHERE statement that uses the SUBSTR        *;
*       function to include rows where the second letter  *;
*       of Basin is P (Pacific ocean storms).             *;
*    2) Run the program and view the log and data. How    *;
*       many storms were in the Pacific basin?            *;
***********************************************************;
*  Syntax                                                 *;
*     SUBSTR (char, position, <length>)                   *;
***********************************************************;

data pacific;
	set pg1.storm_summary;
	drop Type Hem_EW Hem_NS MinPressure Lat Lon;
	*Add a WHERE statement that uses the SUBSTR function;
run;

data pacific;
    set pg1.storm_summary;
    drop type Hem_EW Hem_NS MinPressure Lat Lon;
    where substr(Basin,2,1)="P";
run;  

/* A note in the log indicates that work.pacific has 1958 observations, so there were 1958 storms in the Pacific basin. */