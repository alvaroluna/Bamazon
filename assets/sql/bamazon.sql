-- not sure what this does anymore but keeping this here for reference
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Cinnamon1' 
flush privileges;

DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;
CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(30),
  department_name VARCHAR(30),
  price DECIMAL(6,3),
  stock_quantity INT(6) DEFAULT 2000,
  PRIMARY KEY (item_id)
  );

SELECT * FROM products LIMIT 5000;

INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetA", "Electronics", 100.00, 200);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetB", "Books", 10.00, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetC", "Home Goods", 65.00, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetD", "Computers", 650.00, 15);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetE", "Tools", 45.00, 120);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetF", "Sports / Outdoors", 30.00, 200);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetG", "Pets", 35.00, 400);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetH", "Movies & TV", 25.00, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetI", "Furniture", 300.00, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetJ", "Electronics", 100.00, 40);