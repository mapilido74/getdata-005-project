getdata-005-project
===================
Getting and Cleaning Data Course Project

The script "run_analysis.R" performs the following steps to extract and combine the
data into a tidy dataset contained in one file.

    1. The raw data is read raw data from test and train datasets. 
	   Each consists of three parts, subject vector, activity vector and data table
	   consisting of measured and calculated values.
	2. The subject and activity vector is combined with a filtered list of columns
	   containing the mean and standard deviation of the measured values.
	3. Some housekeeping is performed to free memory.
	4. The two resulting datasets are combined into a single dataset
	5. Column names are added to the dataset.
	6. The last transformation is to substitute the activity values with labels
	   using the match() function
	7. The resulting dataset is written out to a text file.
	
The last part of the script generates an average of the measured values, summarized 
by activity performed by each subject. This is performed using the summaryBy() function 
which is part of the doBy package.