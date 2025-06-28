CREATE OR REPLACE PROCEDURE TransferFunds (
    amount IN NUMBER,
    sender_account IN NUMBER,
    receiver_account IN NUMBER
) IS sender_balance NUMBER;

BEGIN
    SELECT Balance INTO sender_balance
    FROM Accounts
    WHERE AccountID = sender_account;

    IF sender_balance < amount THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient Funds in source account');
    END IF;

    UPDATE Accounts 
    SET Balance = Balance - amount,
        LastModified = SYSDATE
    WHERE AccountID = sender_account;

    UPDATE Accounts 
    SET Balance = Balance + amount,
        LastModified = SYSDATE
    WHERE AccountID = receiver_account;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Transferred ' || amount || ' from account ' || sender_account || ' to account ' || receiver_account);

END;
/