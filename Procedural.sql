DECLARE
    v_in INT:=100;
    v_out INT;

BEGIN

    v_in:=v_in+5;
    DBMS_OUTPUT.PUT_LINE('before calling procedure'||''||v_in);

    TEST_P(v_in);
    DBMS_OUTPUT.PUT_LINE('after call'||''||v_in);

end;