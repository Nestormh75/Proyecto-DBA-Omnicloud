-- Archivo: init.sql

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    product_price NUMERIC NOT NULL
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    product_id INTEGER REFERENCES products(product_id),
    order_date TIMESTAMP NOT NULL
);
-- Crear índices para optimizar consultas.

CREATE INDEX idx_customer_name ON customers(customer_name);
CREATE INDEX idx_product_name ON products(product_name);
CREATE INDEX idx_order_date ON orders(order_date);


INSERT INTO customers (customer_name) VALUES
('John Doe'),
('Jane Smith'),
('Alice Johnson'),
('Bob Brown'),
('Carol White');

INSERT INTO products (product_name, product_price) VALUES
('Laptop', 1200.50),
('Smartphone', 800.75),
('Tablet', 300.00),
('Monitor', 150.99),
('Keyboard', 50.00);

INSERT INTO orders (customer_id, product_id, order_date) VALUES
(1, 1, '2024-01-01 10:00:00'),
(2, 2, '2024-01-02 11:30:00'),
(3, 3, '2024-01-03 15:45:00'),
(4, 4, '2024-01-04 09:20:00'),
(5, 5, '2024-01-05 14:10:00');

-- Crear índices para optimizar consultas.

CREATE INDEX idx_customer_name ON customers(customer_name);
CREATE INDEX idx_product_name ON products(product_name);
CREATE INDEX idx_order_date ON orders(order_date);
