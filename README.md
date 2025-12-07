                                **Healthcare SQL Project (PostgreSQL - pgAdmin)** 

**Overview** 

This project demonstrates a complete end-to-end SQL data engineering and analytics workflow built using PostgreSQL in pgAdmin. 

It is designed to replicate real-world database handling, including data ingestion, cleaning, transformation, modeling, and analytical query development. 

The project uses a large healthcare dataset and converts it into clean, reliable, and structured tables.  

It also includes the execution of 10 analytical SQL queries to extract meaningful insights for reporting and decision-making. 

**Objectives of the Project** 

- Build a staging layer to handle raw healthcare data   
- Design normalized tables for patients, doctors, and departments   
- Clean and transform the data to eliminate duplicates   
- Use SQL to extract insights from the processed data   
- Export analytical results for reporting and business use 

**Project Highlights** 
   
- Includes 10 industry-style analytical queries   
- Clean and organized folder structure   
- Healthcare dataset used for realistic analysis 

**Project Structure** Healthcare\_project/ 

│ 

├── dataset/ 

│   └── large\_healthcare\_dataset.csv │(not stored in repo due to size limit; download from link below)

├── sql\_scripts/ 

│   ├── create\_staging\_table.sql 

│   ├── loading\_dataset\_staging\_table.sql │   ├── create\_patient\_table.sql 

│   ├── create\_doctor\_table.sql 

│   ├── create\_department\_table.sql 

│   ├── insert\_unique\_departments.sql 

│   ├── insert\_unique\_doctors.sql 

│   ├── insert\_patients.sql 

│   │ 

│   └── Query\_writing/ 

│       ├── Query\_01.sql 

│       ├── Query\_02.sql 

│       ├── Query\_03.sql 

│       ├── Query\_04.sql 

│       ├── Query\_05.sql 

│       ├── Query\_06.sql 

│       ├── Query\_07.sql 

│       ├── Query\_08.sql 

│       ├── Query\_09.sql 

│       └── Query\_10.sql 

│ 

├── outputs/ 

│   ├── department\_data.csv 

│   ├── doctor\_data.csv 

│   ├── patient\_data.csv 

│   │ 

│   └── Query\_output/ 

│       ├── Query\_01\_output.csv │       ├── Query\_02\_output.csv │       ├── Query\_03\_output.csv │       ├── Query\_04\_output.csv │       ├── Query\_05\_output.csv │       ├── Query\_06\_output.csv │       ├── Query\_07\_output.csv │       ├── Query\_08\_output.csv │       ├── Query\_09\_output.csv │       └── Query\_10\_output.csv 

**Workflow Summary (What Was Done)** 

The project follows a clearly defined and professional ETL pipeline: 

1️. Data Ingestion (Staging Table Creation) 

- A staging table was created to temporarily hold raw data.   
- The CSV file was imported using pgAdmin’s Import Tool.   
- Purpose: To isolate raw, unclean data from final tables. 

2️. Data Modeling (Final Table Creation) 

- Created normalized tables: 
  - Department   
  - Doctor   
  - Patient   
- Ensures minimal redundancy, improved query performance, and clean structure. 3️.Data Cleaning & Transformation  
- Extracted unique departments   
- Extracted unique doctors   
- Cleaned patient data and inserted into the final table   
- Removed duplicates, fixed formatting issues, and ensured relational consistency 

4️.Analytical Query Execution 

- 10 SQL queries were developed to extract insights, including: 
- Patient distribution   
- Department performance   
- Doctor workload analysis   

5️. Exporting Results 

- All outputs saved as CSV files. 

**Tools & Technologies Used** 

🛠 PostgreSQL   

🛠 pgAdmin 4   

🛠 SQL (DDL, DML, CTEs, aggregations, joins)   

🛠 CSV for input & output processing 

**Outputs** 

The project generates several high-quality CSV outputs: 

- Clean Patient Table   
- Clean Doctor Table   
- Clean Department Table   
- 10 Analytical Query Results   

**Dataset Access**
The original healthcare CSV (~140 MB) exceeds GitHub’s 100 MB file-size limit, so it is hosted externally.  
Download the dataset here: <https://drive.google.com/file/d/1npSeN0QE-f2xRc9ZFbpdi61-okfPy-ww/view?usp=sharing>

**How to Run in PostgreSQL (pgAdmin)** 

1. Import the healthcare CSV dataset   
2. Run the staging table scripts   
2. Run the final table creation scripts   
2. Run the data cleaning/insert scripts   
2. Execute all 10 analytical queries   
2. Export results using pgAdmin 

**Author** 

Created by A. Gowtham Reddy   
