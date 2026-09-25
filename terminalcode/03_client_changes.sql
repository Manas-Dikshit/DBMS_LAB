USE Company;

ALTER TABLE Client_Master
MODIFY COLUMN Name VARCHAR(30);

ALTER TABLE Client_Master
ADD Phone VARCHAR(10);

INSERT INTO Client_Master
(Client_no, Name, City, Pincode, State, Baldue, Phone)
VALUES
('C00007', 'Rahul', 'Keonjhar', 758001, 'Odisha', 2000, '9876543210');

SELECT * FROM Client_Master;
