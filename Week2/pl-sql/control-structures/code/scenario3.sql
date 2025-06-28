SET SERVEROUTPUT ON;

BEGIN
    FOR rec in (
        SELECT l.LoanID, l.CustomerID, l.EndDate, c.Name
        FROM LOANS l
        JOIN Customers c ON l.CustomerID = c.CustomerID
        WHERE l.EndDate BETWEEN SYSDATE AND SYSDATE+30 
    ) LOOP
    DBMS_OUTPUT.PUT_LINE('Reminder: Loan ID - ' || rec.LoanID || ' for customer ' || rec.Name || ' (Customer ID: ' || rec.CustomerID || ') is due on ' || TO_CHAR(rec.EndDate, 'DD-MON-YYYY'));
    END LOOP;
END;
/