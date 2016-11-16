/**********************************************************************************File        : store24-case-b.do  <--- this should be the exact name of THIS documentAuthor      : Kristina Tobio Created     : 15 Nov 2016Modified    : 15 Nov 2016Description : .do file for Store24 Case Part B**********************************************************************************/// these commands prepare your computer for the data and analysis// this finds and closes open log filescapture log close        // this clears Stata's data memory so new data can be loadedclear       // this makes it so you don't have to keep pressing return/enter to scroll through resultsset more off          // this sets memory sizeset mem 100m       // this keeps everything visible on a normal monitor or laptop screenset linesize 200    // cd means "change directory"// you need to change this to the location on your computer where you are storing the .do and data files*cd "/Users/ktobio/Desktop/Jeff/Course/Store24/store24-case/"       // this creates a log file, which will record all of the commands and outputs from this .do file // log files should be placed in a folder named "logs" in your directory log using "logs/store24-case-b", replace// closes your loglog close// drops all data from Stata's memoryclear