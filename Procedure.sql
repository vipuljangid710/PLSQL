create or REPLACE PROCEDURE test_p(x in out INT)
is
BEGIN
    DBMS_OUTPUT.PUT_LINE('before' || '' || x);
    x:=x+60;
        DBMS_OUTPUT.PUT_LINE('after' || '' || x);

end;

-- CREATE  or replace procedure test_p(x in INT ,y OUT INT)
-- IS
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('hey vipul' || '' || x);
--     y:=x*60;
-- end;