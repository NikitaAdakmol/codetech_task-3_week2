# Summary Report: Database Migration (MySQL to PostgreSQL)

## Task Overview
- *Source Database*: MySQL
- *Target Database*: PostgreSQL
- *Objective*: Migrate data between databases while ensuring data integrity.
- *Table Migrated*: your_table_name
- *Data Size*: Example dataset with 3 rows (can be extended to larger datasets).

---

## Steps Taken

### 1. Export Data from MySQL
- Used the SELECT INTO OUTFILE command to export data from MySQL into a CSV file.
- CSV File Path: /tmp/export_data.csv

### 2. Create the Target PostgreSQL Table
- Created a new PostgreSQL database named target_db.
- Defined a table structure in PostgreSQL identical to the MySQL table.

### 3. Import Data into PostgreSQL
- Used the COPY command to load data from the CSV file into the PostgreSQL table.

### 4. Verify Data Integrity
- Ran a SELECT COUNT(*) query in both databases to verify row counts.
- Conducted a manual review of a few rows to ensure data consistency.

---

## Outcome
- The migration was successful.
- No data loss or corruption was detected.
- The entire process was completed using SQL commands to ensure simplicity and maintain data integrity.

---

## Notes
- For larger datasets, consider using a dedicated migration tool like pgloader or scripting languages (e.g., Python).
- Ensure proper permissions for file export/import operations
