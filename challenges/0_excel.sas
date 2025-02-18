/*
Perform the following tasks in your SAS software:

Open a new program window.

Write a LIBNAME statement to create a library named NP that reads np_info.xlsx in the course data as follows:
SAS Studio: Specify the full path to your EPG1V2/data folder and the complete file name.
Enterprise Guide: Specify &path and the complete file name.

Run the LIBNAME statement.

Navigate to your list of libraries and open the NP library. How many tables are there in the NP library?
Answer: 3
     
libname np xlsx "FILEPATH/np_info.xlsx"; 
Enterprise Guide:
libname np xlsx "&path/np_info.xlsx"; 

There are three tables in the NP library: Parks, Species, and Visits.
Write an OPTIONS statement to ensure that column names follow SAS naming conventions.

Write a PROC CONTENTS step to read the Parks table in the NP library.

Add a LIBNAME statement after PROC CONTENTS to clear the NP library.

Run the program and examine the log. Which column names have been modified to follow SAS naming conventions?
Answer: Park_Code and Park_Name
*/

options validvarname=v7;

libname np xlsx "/home/u63838696/EPG1V2/data/np_info.xlsx";

proc contents data=np.parks;
run;

libname np clear;
