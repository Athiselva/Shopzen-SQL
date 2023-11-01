DROP SCHEMA shopzen_user_management;

CREATE SCHEMA shopzen_user_management;

CREATE TABLE shopzen_user_management.user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    address TEXT,
    is_admin TINYINT(1) DEFAULT 0,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by INT,
    is_deleted TINYINT(1) DEFAULT 0
);

DROP SCHEMA shopzen_product_management;

CREATE SCHEMA shopzen_product_management;

CREATE TABLE shopzen_product_management.product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50),
    specification_id INT,
    price DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by INT,
    is_deleted TINYINT(1) DEFAULT 0
);

CREATE TABLE shopzen_product_management.specification (
    id INT AUTO_INCREMENT PRIMARY KEY,
    productId INT,
    size VARCHAR(20),
    weight DECIMAL(10, 2),
    model VARCHAR(50),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by INT,
    is_deleted TINYINT(1) DEFAULT 0,
    CONSTRAINT `fk_product_id` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE
);

DROP SCHEMA shopzen_order_management;

CREATE SCHEMA shopzen_order_management;

CREATE TABLE shopzen_order_management.order (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    productId INT,
    count INT,
    price DECIMAL(10, 2),
    created_by INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_by INT,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_deleted TINYINT(1) DEFAULT 0
);

CREATE TABLE shopzen_order_management.payment (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    trasactionId VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    upnid VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by INT,
    is_deleted TINYINT(1) DEFAULT 0
);

