CREATE OR REPLACE PROCEDURE add_employee (
    p_id NUMBER, p_name VARCHAR2, p_dept VARCHAR2
) AS
BEGIN
    INSERT INTO employees VALUES (p_id, p_name, p_dept);
END;
/
CREATE OR REPLACE PROCEDURE apply_leave (
    p_emp_id NUMBER, p_date DATE, p_reason VARCHAR2
) AS
    v_id NUMBER;
BEGIN
    SELECT NVL(MAX(leave_id), 0) + 1 INTO v_id FROM leave_applications;
    INSERT INTO leave_applications VALUES (v_id, p_emp_id, p_date, p_reason, 'PENDING');
END;
