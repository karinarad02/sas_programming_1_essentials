/* Level 1 Practice: Creating New Columnns */
/* Create a new table named np_summary_update from pg1.np_summary and create the new columns SqMiles and Camping. */

/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Open p104p04.sas from the practices folder. */

/* Create a new column named SqMiles by multiplying Acres by .0015625. */
/* Create a new column named Camping as the sum of OtherCamping, TentCampers, RVCampers, and BackcountryCampers. */
/* Format SqMiles and Camping to include commas and zero decimal places. */
/* Modify the KEEP statement to include the new columns. */
/* Submit the program. */

/* Solution: */
data np_summary_update;
    set pg1.np_summary;
    keep Reg ParkName DayVisits OtherLodging Acres SqMiles Camping;
    SqMiles=Acres*.0015625;
    Camping=sum(OtherCamping,TentCampers,
                RVCampers,BackcountryCampers);
    format SqMiles comma6. Camping comma10.;
run;

/* What are the values of SqMiles and Camping when ParkName is Cape Krusenstern National Monument? */

/* Solution: */
/* The value of SqMiles is 1,014 and the value of Camping is 6,375. */
