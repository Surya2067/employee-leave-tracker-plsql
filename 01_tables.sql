-- EMPLOYEES
CREATE TABLE employees (
    emp_id     NUMBER PRIMARY KEY,
    emp_name   VARCHAR2(100),
    department VARCHAR2(50)
);

-- LEAVE APPLICATIONS
CREATE TABLE leave_applications (
    leave_id     NUMBER PRIMARY KEY,
    emp_id       NUMBER REFERENCES employees(emp_id),
    leave_date   DATE,
    reason       VARCHAR2(255),
    status       VARCHAR2(20) DEFAULT 'PENDING'  -- PENDING / APPROVED / REJECTED
);
