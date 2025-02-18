***********************************************************;
*  Activity 4.05                                          *;
*    1) Open the PG1.STORM_RANGE table and examine the    *;
*       columns. Notice that each storm has four wind     *;
*       speed measurements.                               *;
*    2) Create a new column named WindAvg that is the     *;
*       mean of Wind1, Wind2, Wind3, and Wind4.           *;
*    3) Create a new column WindRange that is the range   *;
*       of Wind1, Wind2, Wind3, and Wind4.                *;
***********************************************************;

data storm_wingavg;
	set pg1.storm_range;
	*Add assignment statements;
run;

data storm_windavg;
    set pg1.storm_range;
    WindAvg=mean(wind1, wind2, wind3, wind4);
    WindRange=range(of wind1-wind4);
run;  

/* Note: you can use the shorthand notation OF col1 - coln to list a range of columns when the columns have the same name and end in a consecutive number. */

/* The WindAvg is 92.5 and the WindRange is 15. */