/**********************************************************************************File        : store24-case-b.do  <--- this should be the exact name of THIS documentAuthor      : Kristina Tobio Created     : 15 Nov 2016Modified    : 16 Nov 2016Description : .do file for Store24 Case Part B**********************************************************************************/// these commands prepare your computer for the data and analysis// this finds and closes open log filescapture log close        // this clears Stata's data memory so new data can be loadedclear       // this makes it so you don't have to keep pressing return/enter to scroll through resultsset more off          // this sets memory sizeset mem 100m       // this keeps everything visible on a normal monitor or laptop screenset linesize 200    // cd means "change directory"// you need to change this to the location on your computer where you are storing the .do and data files*cd "/Users/ktobio/Desktop/Jeff/Course/Store24/store24-case/"       // this creates a log file, which will record all of the commands and outputs from this .do file // log files should be placed in a folder named "logs" in your directory log using "logs/store24-case-b", replace// we created a set of variable in Part A of this case, and they may be useful to us now// so, we use our saved datasetuse "data/store24-case-data-new-variables.dta"// Walking through Statistics Review// Statistics Review and part of the Teaching Note have slightly different results. // I think TN is using an older version of the dataset in one of its Part B section.// Re-run the profit regression from Part Aregress profit mtenure ctenure pop comp visibility ped res hours24 MT2// Add the service quality variable to the original profit regressionregress profit mtenure ctenure pop comp visibility ped res hours24 MT2 servqual// Add the manager skill variable to the original profit regressionregress profit mtenure ctenure pop comp visibility ped res hours24 MT2 mgrskill// Add both variables to the original profit regressionregress profit mtenure ctenure pop comp visibility ped res hours24 MT2 servqual mgrskill// Mediation// Step 1: Show that the initial variable is correlated with the incomeregress profit mtenure ctenure pop comp visibility ped res hours24 MT2 mgrskill// Step 2: Show that the initial variable is correlated with the mediatorregress servqual mtenure ctenure pop comp visibility ped res hours24 MT2 mgrskill// Step 3: Show that the mediator affects the outcome variable, controlling for the initial variable.// Step 4: Note whether the initial variable correlates with the outcome variable, controlling for the mediator.regress profit mtenure ctenure pop comp visibility ped res hours24 MT2 servqual mgrskill// closes your loglog close// drops all data from Stata's memoryclear