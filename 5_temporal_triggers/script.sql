-- Trigger to log changes in Employee salary
CREATE TRIGGER log_salary_change
BEFORE UPDATE ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO SalaryLog (EmployeeID, OldSalary, NewSalary, ChangedAt)
    VALUES (OLD.EmployeeID, OLD.Salary, NEW.Salary, CURRENT_TIMESTAMP);
END;
-- Write your SQL code here
