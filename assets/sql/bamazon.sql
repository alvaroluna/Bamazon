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

INSERT INTO products (product_name, department_name, price, stock_quantity)VALUES ("WidgetA", "Electronics", 100.00, 200);