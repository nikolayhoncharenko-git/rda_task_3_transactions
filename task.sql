USE ShopDB;

START TRANSACTION;

INSERT INTO ShopDB.Orders (CustomerID, Date)
	VALUES (1, '2023-01-01');

INSERT INTO ShopDB.OrderItems(ProductID, Count)
    VALUES (LAST_INSERT_ID(), 1);

UPDATE ShopDB.Products SET WarehouseAmount = WarehouseAmount - 1 WHERE ID = 1;

COMMIT; 