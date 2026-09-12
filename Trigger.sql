create or REPLACE TRIGGER trigger_1
AFTER
UPDATE on employees
BEGIN
    DBMS_OUTPUT.PUT_LINE('hey trigger is updated');
end;