# PostgreSQL Database Practice

A hands-on repository for learning and practicing PostgreSQL from the fundamentals to practical database operations. This repository contains SQL scripts, examples, and exercises covering database creation, schemas, tables, data manipulation, filtering, sorting, JSONB, and more.

## 📚 Topics Covered

### 1. Database Fundamentals
- Database creation and deletion
- Schema creation
- Table creation and constraints
- Primary keys and unique constraints
- Data types: `TEXT`, `VARCHAR`, `INTEGER`, `SERIAL`, `UUID`, `JSONB`, `TIMESTAMP`

### 2. CRUD Operations
- `INSERT` — insert single and multiple records
- `SELECT` — retrieve data
- `UPDATE` — modify single and multiple columns
- `DELETE` — remove records
- `RETURNING` — retrieve affected rows after insert or update

### 3. Filtering and Searching
- `WHERE`
- `AND`, `OR`, `NOT`
- `LIKE` and `ILIKE`
- Pattern matching with `%` and `_`
- `IN` and `NOT IN`
- `BETWEEN`
- `IS NULL` and `IS NOT NULL`

### 4. Sorting and Pagination
- `ORDER BY ASC`
- `ORDER BY DESC`
- `LIMIT`
- `OFFSET`

### 5. PostgreSQL Advanced Concepts
- Schema management
- JSONB data storage and querying
- JSONB operators: `->>`, `?`
- UUID generation with `gen_random_uuid()`
- Extensions such as `pgcrypto`
- Event data storage using JSONB metadata

### 6. Database Administration and Tools
- PostgreSQL command-line tool (`psql`)
- SQL script execution
- Git and GitHub version control

## 🛠️ Technologies Used

- **Database:** PostgreSQL 18
- **Query Language:** SQL
- **Database Client:** PostgreSQL `psql`
- **Version Control:** Git and GitHub
- **Operating System:** Windows

## 📁 Repository Structure

```text
Postgres_database/
├── Part1/
│   ├── 01_db.sql
│   └── ... additional SQL practice files
└── README.md
```

*The exact files may vary as the repository grows.*

## ⚙️ Setup and Installation

### Step 1: Install PostgreSQL

Install PostgreSQL from the official website:

https://www.postgresql.org/download/

### Step 2: Clone the Repository

```bash
git clone https://github.com/SomeshThombare/Postgres_database.git
```

### Step 3: Navigate to the Project

```bash
cd Postgres_database
```

### Step 4: Connect to PostgreSQL

Open a terminal and run:

```bash
psql -U postgres -d postgres
```

Enter your PostgreSQL password when prompted.

### Step 5: Create a Practice Database

```sql
CREATE DATABASE postgress_db_part1;
```

Connect to it:

```sql
\c postgress_db_part1
```

### Step 6: Execute SQL Scripts

From PowerShell, run:

```powershell
psql -U postgres -d postgress_db_part1 -f "Part1/01_db.sql"
```

Adjust the file path if your SQL script is stored in a different location.

## 💡 Example Queries

### Create a Table

```sql
CREATE TABLE basics.employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10, 2)
);
```

### Insert Multiple Records

```sql
INSERT INTO basics.employees
    (full_name, email, department, salary)
VALUES
    ('Sam Patil', 'sam@gmail.com', 'IT', 45000),
    ('Priya Sharma', 'priya@gmail.com', 'HR', 38000);
```

### Filter and Sort Records

```sql
SELECT full_name, department, salary
FROM basics.employees
WHERE salary > 40000
ORDER BY salary DESC;
```

### Search Using ILIKE

```sql
SELECT full_name
FROM basics.employees
WHERE full_name ILIKE '%sam%';
```

### Query JSONB Data

```sql
SELECT
    event_name,
    metadata ->> 'user_id' AS user_id
FROM basics.app_event
WHERE metadata ? 'user_id';
```

## 🎯 Learning Objectives

- Build a strong foundation in SQL and PostgreSQL.
- Understand relational database design and constraints.
- Practice data insertion, retrieval, modification, and deletion.
- Write effective filtering and sorting queries.
- Work with PostgreSQL-specific data types and JSONB operators.
- Develop practical database skills for software development interviews.

## 🚀 Future Improvements

- Add JOINs and subqueries.
- Practice aggregate functions and `GROUP BY` / `HAVING`.
- Explore indexes and query optimization.
- Learn views, stored functions, and triggers.
- Practice transactions and database normalization.
- Build mini-projects using PostgreSQL.

## 👨‍💻 Author

**Somesh Thombare**

GitHub: [@SomeshThombare](https://github.com/SomeshThombare)

---

If you find this repository useful, feel free to ⭐ star it and explore the SQL examples.

**Note:** This repository is intended for learning and practice. Run destructive SQL commands, such as `DROP DATABASE`, carefully.
