# 🧾 Employee Leave Tracker (PL/SQL Mini Project)

A simple backend system built in **PL/SQL** to manage employee leave applications. It supports adding employees, applying for leave, and storing leave status — ideal for learning procedures, constraints, and SQL basics.

---

## 📌 Features

- Add employee records
- Apply for leave with reason and date
- Track status of each leave request
- Clean and modular code using PL/SQL procedures

---

## 🛠 Technologies Used

- Oracle Database (11g/12c/19c)
- SQL (DDL/DML)
- PL/SQL (Stored Procedures)

---

## 🗃️ Schema Design

### 🔸 Table: `employees`

| Column      | Type         | Description         |
|-------------|--------------|---------------------|
| emp_id      | NUMBER (PK)  | Unique employee ID  |
| emp_name    | VARCHAR2     | Employee name       |
| department  | VARCHAR2     | Department name     |

---

### 🔸 Table: `leave_applications`

| Column      | Type         | Description              |
|-------------|--------------|--------------------------|
| leave_id    | NUMBER (PK)  | Unique leave ID          |
| emp_id      | NUMBER (FK)  | Employee requesting leave|
| leave_date  | DATE         | Date of leave            |
| reason      | VARCHAR2     | Leave reason             |
| status      | VARCHAR2     | Default: 'PENDING'       |

---

## 📦 Stored Procedures

### 1. `add_employee`

```sql
PROCEDURE add_employee (
  p_id NUMBER, p_name VARCHAR2, p_dept VARCHAR2
)
