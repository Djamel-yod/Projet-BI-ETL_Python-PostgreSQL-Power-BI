CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  join_date Date
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  order_date Date,
  status VARCHAR(50)
);


CREATE TABLE product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price float4,
  category VARCHAR(50),
  unit_price INT
);


CREATE TABLE order_details (
  order_detail_id INT PRIMARY KEY,
  order_id INT REFERENCES orders(order_id),
  product_id INT REFERENCES product(product_id),
  quantity 	float4,
  unit_price INT
);



