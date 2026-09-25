-- =========================================
-- A) CLIENT_MASTER
-- =========================================

INSERT INTO Client_Master
(Client_no, Name, City, Pincode, State, Baldue)
VALUES
('C00001', 'Rashmi Dash', 'Sundargarh', 700054, 'Odisha', 15000),
('C00002', 'Surya Nanda', 'Sambalpur', 780001, 'Odisha', 0),
('C00003', 'Golu Acharya', 'Rourkela', 400057, 'Odisha', 5000),
('C00004', 'Mukesh Sharma', 'Bhubaneswar', 560001, 'Odisha', 0),
('C00005', 'Bhawani Bansal', 'Cuttack', 400060, 'Odisha', 2000),
('C00006', 'Kamal Thaty', 'Bolangir', 560050, 'Odisha', 0);


-- =========================================
-- B) PRODUCT_MASTER
-- =========================================

INSERT INTO Product_Master
(Product_no, Description, Profit_percent, Unit_measure,
 Qty_on_Hand, Re_order_lvl, Sell_price, Cost_price)
VALUES
('P00001', 'T-Shirts', 5, 'Piece', 200, 50, 350, 250),
('P0345',  'Shirts', 6, 'Piece', 150, 50, 500, 350),
('P06754', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450),
('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500),
('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550),
('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450),
('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250),
('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175),
('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);


-- =========================================
-- C) SALESMAN_MASTER
-- =========================================

INSERT INTO Salesman_Master
(Sales_man_no, Sales_man_name, Address1, Address2,
 City, Pincode, State, Sal_amt, TGTTOGET, Ytd_sales, Remarks)
VALUES
('S00001', 'Aman',   'A/14', 'Sahid nagar', 'BBSR', 400002, 'Odisha', 3000, 100, 50,  'Good'),
('S00002', 'Omkar',  '65',   'Burla',        'SBP',  400001, 'Odisha', 3000, 200, 100, 'Good'),
('S00003', 'Raj',    'P-7',  'Ainthapali',   'SBP',  400032, 'Odisha', 3000, 200, 100, 'Good'),
('S00004', 'Ashish', 'A/5',  'Sect. -2',     'RKL',  400044, 'Odisha', 3500, 200, 150, 'Good');