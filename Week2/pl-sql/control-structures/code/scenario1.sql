SET SERVEROUTPUT ON;

DECLARE
	age NUMBER;

BEGIN
	FOR cus in (SELECT CustomerID, DOB FROM Customers) LOOP
		age := FLOOR(MONTHS_BETWEEN(SYSDATE, cus.DOB) / 12);

		IF age > 60 THEN
			UPDATE Loans 
			SET InterestRate = InterestRate - 1
			WHERE CustomerID = cus.CustomerID;

			DBMS_OUTPUT.PUT_LINE('Discount applied to Customer ID: ' || cus.CustomerID);
		END IF;
	END LOOP;

	COMMIT;
END;
/