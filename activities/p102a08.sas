***********************************************************;
*  Activity 2.08                                          *;
*    1) This program imports a tab-delimited file. Run    *;
*       the program twice and carefully read the log.     *;
*       What is different about the second submission?    *;
*    2) Fix the program and rerun it to confirm that the  *;
*       import is successful.                             *;
***********************************************************;

*Modify the path if necessary;
proc import datafile="s:/workshop/data/storm_damage.tab" 
			dbms=tab out=storm_damage_tab;
run;

proc import datafile="/home/u63838696/EPG1V2/data/storm_damage.tab" 
			dbms=tab out=storm_damage_tab;
run;

/* 1) A note in the log indicates that the import was cancelled because work.storm_damage_tab already exists. It also instructs you to specify the REPLACE option to overwrite it. */
/* 2) */
proc import datafile="/home/u63838696/EPG1V2/data/storm_damage.tab" 
			dbms=tab out=storm_damage_tab replace;
run; 