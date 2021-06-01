
CREATE TABLE Product(
    Product_id VARCHAR(20) CONSTRAINT pk_product PRIMARY KEY,
    product_name VARCHAR(20) CONSTRAINT cons_product NOT NULL,
    Price NUMBER CONSTRAINT check_price CHECK (Price>0).
);
DESCRIBE Product;

CREATE TABLE Costumers(
    Costumer_id VARCHAR(20),
    Costumer_name VARCHAR(20) CONSTRAINT cons_costumer NOT NULL.
    Costumer_tel NUMBER,
);
DESCRIBE Costumers;

CREATE TABLE Orders(
    Costumer_id VARCHAR(20) CONSTRAINT pk_costumer PRIMARY KEY,
    Product_id VARCHAR(20),
    quantity NUMBER,
    total_amount NUMBER,
    CONSTRAINT fk_costumer FOREIGN KEY (Costumer_id) REFERENCES Costumers (Costumer_id),
    CONSTRAINT fk_product FOREIGN Key (Product_id) REFERENCES Producs (Product_id),
);
DESCRIBE Orders;

Alter TABLE Product ADD Category VARCHAR(20);
Alter TABLE Orders ADD OrderDate DATE(SYSDATE);