-- Database Schema: E-Commerce Platform

CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE customers (
    customer_id   INT PRIMARY KEY AUTO_INCREMENT,
    name     VARCHAR(50)  NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    created_at    TIMESTAMP    DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
    product_id    INT PRIMARY KEY AUTO_INCREMENT,
    name          VARCHAR(100) NOT NULL,
    description   TEXT,
    price         DECIMAL(10,2) NOT NULL,
    category      VARCHAR(50),
    created_at    TIMESTAMP     DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    order_id      INT PRIMARY KEY AUTO_INCREMENT,
    customer_id   INT NOT NULL,
    total_amount  DECIMAL(10,2) NOT NULL,
    status        ENUM('Pending','Processing','Shipped','Delivered','Cancelled') DEFAULT 'Pending',
    order_date    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id       INT PRIMARY KEY AUTO_INCREMENT,
    order_id      INT NOT NULL,
    product_id    INT NOT NULL,
    quantity      INT           NOT NULL,
    unit_price    DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
