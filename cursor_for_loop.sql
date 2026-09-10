DECLARE
    -- Step 1: Defining cursor
    CURSOR emp_cursor IS
        SELECT e.first_name, e.last_name, r.job_title
        FROM employees e
        JOIN roles r ON e.role_id = r.role_id;

BEGIN
    -- Step 2: Fetch rows using FOR loop
    FOR emp IN emp_cursor
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Employee: ' || emp.first_name || ' ' || emp.last_name ||
            ' | Role: ' || emp.job_title
        );
    END LOOP;

END;
/