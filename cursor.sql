

DECLARE
    -- Step 1:  Defining cursor 
    CURSOR emp_cursor IS
        SELECT e.first_name, e.last_name, r.job_title
        FROM employees e
        JOIN roles r ON e.role_id = r.role_id;
        
    -- Variables to store fetched row data
    v_first_name employees.first_name%TYPE; -- %type is used to declare with the same datatype 
    v_last_name  employees.last_name%TYPE;
    v_job_title  roles.job_title%TYPE;



    
BEGIN
    -- Step 2: Cursor Open karo (Memory allocate hoti hai)
    OPEN emp_cursor;
    
    LOOP
        -- Step 3: Single Row Fetch karo
        FETCH emp_cursor INTO v_first_name, v_last_name, v_job_title;
        
        -- Condition check karo ki kya rows khatam ho gayi
        EXIT WHEN emp_cursor%NOTFOUND;
        
        -- Output Print karo
        DBMS_OUTPUT.PUT_LINE('Employee: ' || v_first_name || ' ' || v_last_name || ' | Role: ' || v_job_title);
    END LOOP;
    
    -- Step 4: Cursor Close karo (Memory free hoti hai)
    CLOSE emp_cursor;
END;
/