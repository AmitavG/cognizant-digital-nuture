CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    department IN VARCHAR2, 
    bonusPerc IN NUMBER
) IS 
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * (bonusPerc/100))
    WHERE Department = department;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Bonus of ' || bonusPerc || '% applied to department: ' || department);

END;
/