CREATE DATABASE IF NOT EXISTS Company;
USE Company;

DROP TABLE IF EXISTS Client_Master;
DROP TABLE IF EXISTS Product_Master;
DROP TABLE IF EXISTS Salesman_Master;

CREATE TABLE Client_Master (
    Client_no VARCHAR(6),
    Name VARCHAR(20),
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    City VARCHAR(15),
    Pincode DECIMAL(8,0),
    State VARCHAR(15),
    Baldue DECIMAL(10,2)
);

CREATE TABLE Product_Master (
    Product_no VARCHAR(6),
    Description VARCHAR(15),
    Profit_percent DECIMAL(4,2),
    Unit_measure VARCHAR(10),
    Qty_on_Hand DECIMAL(8,0),
    Re_order_lvl DECIMAL(8,0),
    Sell_price DECIMAL(8,2),
    Cost_price DECIMAL(8,2)
);

CREATE TABLE Salesman_Master (
    Sales_man_no VARCHAR(6),
    Sales_man_name VARCHAR(20),
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    City VARCHAR(20),
    Pincode DECIMAL(8,0),
    State VARCHAR(20),
    Sal_amt DECIMAL(8,2),
    TGTTOGET DECIMAL(6,2),
    Ytd_sales DECIMAL(6,2),
    Remarks VARCHAR(60)
);

SHOW TABLES;