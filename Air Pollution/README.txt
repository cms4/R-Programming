

pollutantmean.R
	1) Calculate the mean of a pollutant(sulfate or nitrate) across a specified list of monitors
	2) Take 3 arguments, directory (the location of the CSV files), pollutant(the name of the pollutant to calculate the mean, either "sulfate" or "nitrate”), id(the monitor ID numbers to be used)
	

complete.R
	1) Read files and report the number of completely observed cases in each data file, return a data frame
	2) Take 2 arguments, directory (the location of the CSV files), id(the monitor ID numbers to be used)


corr.R
	1) Calculate the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than given threshold.
	2) Take 2 arguments, directory (the location of the CSV files), threshold(the number of completely observed observations (on all variables) required to compute the correlation between nitrate and sulfate; the default is 0)
	

specdata
	Contain 332 comma-separated-value (CSV) files containing pollution monitoring data for fine particulate matter (PM) air pollution at 332 locations in the United States.