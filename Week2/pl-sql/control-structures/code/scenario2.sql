SET SERVEROUTPUT ON;

BEGIN
    FOR cus in (SELECT CustomerID, Balance FROM Customers) LOOP
        IF cus.Balance > 10000 THEN
            UPDATE Customers
            SET isVIP = 'TRUE'
            WHERE CustomerID = cus.CustomerID;

            DBMS_OUTPUT.PUT_LINE('Customer ' || cus.CustomerID || 'promoted to VIP');
        
        ELSE
            UPDATE Customers
            SET isVIP = 'FALSE'
            WHERE CustomerID = cus.CustomerID;

            DBMS_OUTPUT.PUT_LINE('Customer ' ||cus.CustomerID || 'is not VIP');
        END IF;
    END LOOP;
    COMMIT;
END;
/