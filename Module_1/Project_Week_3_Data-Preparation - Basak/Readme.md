# Project_3_Data_Cleaning

## Salaries Data Manipulation

#Importing

- Excel file was imported with then table head and data types were checked. At the beginning there was 62K raws in excel file and it decreased to 57K
after all cleaning and manipulation jobs.

#Cleaning 
- Unnecessary columns have been removed. Required columns (like country) were added to data frame. 
- All columns name were renamed. 
- Empty cells, duplicates were checked and irrelevant ones have been removed. 
- Outliers were identified with dataplots and they have been removed with quantile method. Also "nlargest" function has been       removed too.
- Typos in job title have been fixed and unique names were used for all job titles (like: Soft Engineer converted to the Software Engineer)

#Manipulating
- Missing salary, bonus and compensation data was replaced with the average of the same job title salary data.

#Exporting
- New data frame has been exported as a CSV file to record.
- pymysql.cursors was used to send the clean data to mySQL Benchmark because manual csv export didn't work properly. 

#Challenges
- The main challenge was to importing csv file to SQL and we had to deal with it with pymysql.cursors.

#Results
- Results have been generated with mySQL to analyze the differences between job titles, genders, races, experiences, etc...


#JIRA link : https://basakbuluttekin.atlassian.net/jira/software/projects/P3DC/boards/3
