/* Level 1 Practice: Processing Statements Conditionally with IF-THEN/ELSE */
/* The pg1.np_summary table contains public use statistics from the National Park Service. The values of the Type column represent park type as a code. Create a new column, ParkType, that contains full descriptive values. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open p104p07.sas from the practices folder. Submit the program and view the generated output. */


/* In the DATA step, use IF-THEN/ELSE statements to create a new column, ParkType, that is based on the value of Type. */

/* Type						ParkType */
/* NM						Monument */
/* NP						Park */
/* NPRE, PRE, or PRESERVE	Preserve */
/* NS						Seashore */
/* RVR or RIVERWAYS			River */

/* Solution: */
data park_type;
	set pg1.np_summary;
	length ParkType $ 8;
    if Type='NM' then ParkType='Monument';
    else if Type='NP' then ParkType='Park';
    else if Type in ('NPRE', 'PRE', 'PRESERVE') then
        ParkType='Preserve';
    else if Type in ('RVR', 'RIVERWAYS') then ParkType='River';
    else if Type='NS' then ParkType='Seashore';
run;

proc freq data=park_type;
    tables Type;
run;

/* Modify the PROC FREQ step to generate a frequency report for ParkType. Submit the program. */

/* Solution: */
data park_type;
    set pg1.np_summary;
    length ParkType $ 8;
    if Type='NM' then ParkType='Monument';
    else if Type='NP' then ParkType='Park';
    else if Type in ('NPRE', 'PRE', 'PRESERVE') then
        ParkType='Preserve';
    else if Type in ('RVR', 'RIVERWAYS') then ParkType='River';
    else if Type='NS' then ParkType='Seashore';
run;

proc freq data=park_type;
    tables ParkType;
run;

/* What is the frequency of Seashore? */

/* Solution: */
/* 10 */