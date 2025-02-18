***********************************************************;
*  Activity 4.04                                          *;
*    1) Add an assignment statement to create StormLength *;
*       that represents the number of days between        *;
*       StartDate and EndDate.                            *;
*    2) Run the program. In 1980, how long did the storm  *;
*       named Agatha last?                                *;
***********************************************************;

data storm_length;
	set pg1.storm_summary;
	drop Hem_EW Hem_NS Lat Lon;
	*Add assignment statement;
run;

data storm_length;
       set pg1.storm_summary;
       drop Hem_EW Hem_NS lat lon;
       StormLength = EndDate-StartDate+1;
   run;
   
/* The storm named Agatha lasted 7 days in 1980. */