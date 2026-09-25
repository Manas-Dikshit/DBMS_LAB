-- 1. Change Name size from 20 to 30
ALTER TABLE Client_Master
MODIFY COLUMN Name VARCHAR(30);

-- 2. Add a new column
ALTER TABLE Client_Master
ADD Phone VARCHAR(10);

-- 3. Add a new row
INSERT INTO Client_Master
(Client_no, Name, City, Pincode, State, Baldue, Phone)
VALUES
('C00007', 'Rahul', 'Keonjhar', 758001, 'Odisha', 2000, '9876543210');

-- 4. Display the table
SELECT * FROM Client_Master;