
/* Level 2 Practice: Using Procedures to Validate Data */
/* The pg1.np_summary table contains information about US national parks, monuments, preserves, rivers, and seashores. Valid values and descriptions for the columns Reg and Type are as follows: */

/* Reg	Description			Type	Description */
/* A	Alaska				NM		National Monument */
/* IM	Intermountain		NP		National Park */
/* MW	Midwest				NS		National Seashore */
/* NC	National Capital	PRE		National Preserve */
/* NE	Northeast			RVR		National River */
/* PW	Pacific West	 				 		 */
/* SE	Southeast	 	 						 */
/* Reminder: If you restarted your SAS session,you must recreate the PG1 library so you can access your practice files. In SAS Studio, open and submit the libname.sas program in the EPG1V2 folder. In Enterprise Guide, run the Autoexec process flow. */

/* Create a new program. */

/* Write a PROC FREQ step to produce frequency tables for the Reg and Type columns in the pg1.np_summary table. */
/* Submit the step and look for invalid values. */

/* Solution: */
proc freq data=pg1.np_summary;
    tables Reg Type;
run;

/* What invalid values exist for Reg? */

/* Solution: */
/* No invalid values exist for Reg. */

/* What invalid values exist for Type? */

/* Solution: */
/* NPRE, PRESERVE, and RIVERWAYS are invalid values for Type. */

/* Write a PROC UNIVARIATE step to generate statistics for the Acres column in the pg1.np_summary table. Submit the step. */

/* Solution: */
proc univariate data=pg1.np_summary;
    var Acres;
run;

/* What are the observation numbers for the smallest park and the largest park? */

/* Solution: */
/* Smallest: Observation 78 */
/* Largest: Observation 6 */

/* View the pg1.np_summary table to identify the name and size of the smallest and largest parks. */

/* Solution: */
/* Smallest: African Burial Ground Monument, .35 acres */
/* Largest: Noatak National Preserve, 6,587,071.39 acres */
