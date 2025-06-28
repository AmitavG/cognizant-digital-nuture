BEGIN

  INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
  VALUES (6, 'Martha Nguyen', TO_DATE('1962-03-14', 'YYYY-MM-DD'), 7500, SYSDATE);

  INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
  VALUES (7, 'Derek Chan', TO_DATE('2000-11-02', 'YYYY-MM-DD'), 250, SYSDATE);

  INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
  VALUES (8, 'Fatima Zahra', TO_DATE('1982-05-18', 'YYYY-MM-DD'), 10200, SYSDATE);

  INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
  VALUES (9, 'Jamal Okafor', TO_DATE('1970-09-25', 'YYYY-MM-DD'), 150, SYSDATE);

  INSERT INTO Customers (CustomerID, Name, DOB, Balance, LastModified)
  VALUES (10, 'Gloria Tanaka', TO_DATE('1950-12-01', 'YYYY-MM-DD'), 50000, SYSDATE);

  INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
  VALUES (6, 6, 'Premium Checking', 7500, SYSDATE);

  INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
  VALUES (7, 7, 'Youth Savings', 250, SYSDATE);

  INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
  VALUES (8, 8, 'Investment', 10200, SYSDATE);

  INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
  VALUES (9, 9, 'Basic Savings', 150, SYSDATE);

  INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, LastModified)
  VALUES (10, 10, 'Senior Advantage', 50000, SYSDATE);

  INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
  VALUES (6, 6, SYSDATE - 1, 1200, 'Transfer');

  INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
  VALUES (7, 7, SYSDATE - 2, 75, 'Fee');

  INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
  VALUES (8, 8, SYSDATE - 5, 3000, 'Withdrawal');

  INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
  VALUES (9, 9, SYSDATE - 3, 100, 'Deposit');

  INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount, TransactionType)
  VALUES (10, 10, SYSDATE, 50000, 'Bonus');

  INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
  VALUES (5, 6, 10000, 6.2, SYSDATE - 400, SYSDATE + 29);  -- Senior, due soon

  INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
  VALUES (6, 7, 1500, 8.0, SYSDATE - 60, ADD_MONTHS(SYSDATE, 12));  -- Young borrower

  INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
  VALUES (7, 8, 22000, 3.9, SYSDATE - 100, ADD_MONTHS(SYSDATE, 24)); -- Long-term loan

  INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
  VALUES (8, 9, 5000, 6.5, SYSDATE - 720, SYSDATE - 10);  -- Expired

  INSERT INTO Loans (LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
  VALUES (9, 10, 30000, 2.5, SYSDATE - 180, SYSDATE + 15);  -- Senior with good rate

  INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
  VALUES (6, 'Junpei Arata', 'Risk Analyst', 72000, 'Finance', TO_DATE('2021-05-01', 'YYYY-MM-DD'));

  INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
  VALUES (7, 'Sofia Delgado', 'Test Engineer', 67000, 'Quality', TO_DATE('2022-01-20', 'YYYY-MM-DD'));

  INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
  VALUES (8, 'Hans Bauer', 'Regional Head', 91000, 'Operations', TO_DATE('2016-08-15', 'YYYY-MM-DD'));

  INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
  VALUES (9, 'Layla Al-Masri', 'Campaign Manager', 72000, 'Marketing', TO_DATE('2019-09-30', 'YYYY-MM-DD'));

  INSERT INTO Employees (EmployeeID, Name, Position, Salary, Department, HireDate)
  VALUES (10, 'Noah Stein', 'Network Engineer', 58000, 'IT', TO_DATE('2018-04-10', 'YYYY-MM-DD'));

  COMMIT;
END;
/