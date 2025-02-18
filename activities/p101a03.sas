***********************************************************;
*  Activity 1.03                                          *;
*    1) View the code. How many steps are in the program? *;
*    2) How many statements are in the PROC PRINT step?   *;
*    3) How many global statements are in the program?    *;
*    4) Run the program and view the log.                 *;
*    5) How many observations were read by the PROC PRINT *;
*       step?                                             *;
***********************************************************;
/* 
1) There are three steps: one DATA step and two PROC steps. 
2) four statements
3) three TITLE statements
4) -
5) 11 observations */
data mycars;
	set sashelp.cars;
	AvgMPG=mean(mpg_city, mpg_highway);
run;

title "Cars with Average MPG Over 35";
proc print data=mycars;
	var make model type avgmpg;
	where AvgMPG > 35;
run;

title "Average MPG by Car Type";
proc means data=mycars mean min max maxdec=1;
	var avgmpg;
	class type;
run;

title;
