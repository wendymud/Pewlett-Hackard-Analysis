# Pewlett-Hackard-Analysis

The task in this challenge was to assist with getting a better understanding of the number of employees of a certain company that are ready to retire.  Due to the mass exodus, the company needs to understand the impact, get an idea of the number of openings that will be available to fill, and the loss of resources in each department due to retirement.  Here were the Phase I asks from the company:

- Design an ERD that will apply to the data.
- Create and use a SQL database.
- Import and export large CSV datasets into pgAdmin.
- Practice using different joins to create new tables in pgAdmin.
- Write basic- to intermediate-level SQL statements.

Tools used: PGAdmin to create tables and data bases, to code and query in PostGreSQL 11.0, MS Excel to create and manage .csv files, QuickDBD to create ERDs, Visual Studio to load and save schemas and query functions.

From a techical perspective, the best way to get a handle on this date is to first create a conceptual Entity Relationhship Diagram (ERD).  This ERD will take a logical look at the data and how to interlink it so that it's easier to query all of the data together.  Figure 1, below shows the depictions of six data tables.  Some have employee information, some have roles and hire dates.  Each of the tables of data we have an how they link together.  The Primary Keys (PK) within each table will display as a key, linking the tables together for easy joining of data.

![EmployeeDB.PNG](EmployeeDB.PNG)
### Figure 1

The snapshot of the conceptual ERD, allows for creating of the six logical tables that will be utilized for this analysis.  Within PostGres SQL, the tables need to be built prior to uploading the actual data.  The six tables were built and their relationships were initially referenced to initiate the merging of data files.  Following this step, it was important to slowly import all of the necessary data files into each of their newly created tables.  There was a bit of data wrangling involved as some of the created tables needed fixing.  There were some minor errors encountered (and fixed) prior to importing the data files.  The data needed to be accurately handled prior to the next step which is to merge or join some of the tables together.  Dependent upon the necessary data required, some of the tables were properly merged.  As an example you can see that the primary key was 'emp_no."  That made it easy to join the tables together bases on their employee numbers.  With the departments, those were referenced together then linked over one of the other files with the "emp_no" key. 

Upon the joining of the tables, SQL queries were created to extract data to determine these key values:
1. The number of retiring employees by job title
2. The employees that are eligible to take part in the mentorship program

In the first deliverable, it was necessary to filter the names of the employees to get a good scope of the number of employees that are of retirement age and what roles they current hold.  The initial study determined that there were over 130K names that appeared on the 'ready to retire' list.  But in taking a further look, some employees were counted twice or more, as this data file listed some employees in their current and previous roles within the company.  So a second pass was necessary to understand the actual total of potential retirees.  In Figure 2, you can see that this spreadsheet has no repeated names of employees, and the actual list was actually a bit over to 90K employees.

![unique_titles.csv](./data/unique_titles.csv)
### Figure 2

Taking all of this into consideration, the company was concerned on where the gaps would like in terms of resources, so the next query created was to conduct a total count of the employees grouped per job title as an indication of the necessary transitions that would need to happen with hiring new employees and knowledge transfer.  The bulk of the roles needing replacement are Senior Engineer roles at 29K, Senior Staff at 28K and general Engineer roles listed at 14K.  The summary can be viewed in Figure 3.

![retiring_titles.csv](./data/retiring_titles.csv)
### Figure 3

The final deliverable included gathering a list of eligible employees to enter into the mentorship program (per age), to take on and possibly fill the necessary roles from the potential retirees.  The query created for this group included the name, birthdate and title of current employees.

![mentorship_eligibility.csv](./data/mentorship_eligibility.csv)
### Figure 4

In summary, this analysis provided a much clearer picture of the potential up and coming changes to the workforce at Pewlett Hackard.  It give management a very good understanding of the situation at hand and how to tackle the issues that may arise due to the aging organization.  Without the appropriate preparation of this "silver tsunami" the gaps incurred would be a huge detriment to the entire company.  However in terms of utilizing the next wave of employees, it would be great start in getting the list of 2k employees engaged with the mentorship program.  Dependent upon the actual number of retirees that will actually separate with the company that are age-appropriate, there will need to be a lot more intervention in terms of hiring and training to fill all of the upcoming empty opportunities.



