Here’s the updated `README.md` with revised instructions on **how to run the SQL files after logging into MySQL**, and simplified command-line usage explanations:

---

```markdown
# Student-Course Management Database

This project provides SQL scripts to create and populate a sample relational database for managing departments, students, courses, faculty, and their relationships within an educational institution.

## 📂 Project Structure

- `create_tables.sql` – Defines the schema with tables, primary keys, and foreign keys.
- `insert_data.sql` – Inserts sample data into all tables for testing and demonstration.

## 🧱 Database Schema Overview

The database includes the following tables:

- **departments**: Contains department details.
- **students**: Contains student information including department affiliation.
- **courses**: Contains course offerings with credit information.
- **faculty**: Contains faculty information including department affiliation.
- **course_faculty**: Many-to-many mapping between courses and faculty (with semester info).
- **enrollments**: Tracks which students are enrolled in which courses, their semester, and grades.
```

### ✅ Setup Instructions

### Step 1: Open MySQL Command Line

Login to your MySQL server by running:

```bash
mysql -u <your_username> -p
```

You’ll be prompted to enter your MySQL password.

### Step 2: Create a Database

Inside the MySQL prompt, create a new database:

```sql
CREATE DATABASE student_course_db;
USE student_course_db;
```

### Step 3: Run the SQL Scripts

To execute the `.sql` files from within the MySQL prompt:

```sql
SOURCE /path/to/create_tables.sql;
SOURCE /path/to/insert_data.sql;
```

Replace `/path/to/` with the actual location where your SQL files are saved.

### Example:

```sql
SOURCE C:/Users/Haresh/Desktop/create_tables.sql;
SOURCE C:/Users/Haresh/Desktop/insert_data.sql;
```

> ✅ Tip: Ensure that the file paths use **forward slashes (`/`)** or are enclosed in quotes on Windows.

## 📊 Sample Data

The database includes:

- 20 departments
- 20+ students with varied department affiliations
- 20+ courses including theory and lab sessions
- 20+ faculty members
- Course-faculty mapping across semesters
- Enrollment records with grades

## 🔍 Use Cases

This setup is ideal for:

- Learning relational database design
- Practicing SQL queries (joins, aggregates, constraints)
- Developing educational management systems
- Academic projects for database or software engineering courses

## 📄 License

This project is open-source and free to use for educational or non-commercial purposes.

---

📬 Feel free to contribute by submitting a pull request or reporting any issues!

```

---

Let me know if you'd like a `.docx` or `.pdf` version of this `README`, or a sample query sheet to test your database after setup.
```
