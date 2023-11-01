# Shopzen SQL Repository

This repository contains SQL scripts to create a database schema for Shopzen, an e-commerce platform. The database is organized into three schemas for user management, product management, and order management.

## User Management Schema

The user management schema contains tables for storing user information, including their name, email, phone number, address, whether they are an admin, and login credentials. The `user` table includes the following columns:

- `id` (Primary Key): Unique user ID
- `name`: User's name
- `email`: User's email
- `phone_number`: User's phone number
- `address`: User's address
- `is_admin`: 1 for admin, 0 for regular user (default)
- `username`: User's username
- `password`: User's hashed password
- `created_at`: Timestamp of user creation
- `created_by`: ID of the user who created this user (can be null)
- `modified_at`: Timestamp of the last modification
- `modified_by`: ID of the user who last modified this user (can be null)
- `is_deleted`: 1 if the user is deleted, 0 (default) otherwise

## Product Management Schema

The product management schema includes tables for managing product information and specifications. The `product` table contains the following columns:

- `id` (Primary Key): Unique product ID
- `name`: Product name
- `type`: Product type
- `specification_id`: ID referencing the product's specifications
- `price`: Product price
- `created_at`: Timestamp of product creation
- `created_by`: ID of the user who created this product
- `modified_at`: Timestamp of the last modification
- `modified_by`: ID of the user who last modified this product
- `is_deleted`: 1 if the product is deleted, 0 (default) otherwise

The `specification` table is used to store detailed product specifications and is related to the `product` table using a foreign key constraint.

## Order Management Schema

The order management schema is responsible for managing user orders and payment information. The `order` table includes the following columns:

- `id` (Primary Key): Unique order ID
- `userId`: ID of the user who placed the order
- `productId`: ID of the ordered product
- `count`: Quantity of the product in the order
- `price`: Total price of the order
- `created_by`: ID of the user who created this order
- `created_at`: Timestamp of order creation
- `modified_by`: ID of the user who last modified this order
- `modified_at`: Timestamp of the last modification
- `is_deleted`: 1 if the order is deleted, 0 (default) otherwise

The `payment` table is used to store payment information related to orders and includes the following columns:

- `Id` (Primary Key): Unique payment ID
- `transactionId`: Transaction ID
- `price`: Payment amount
- `status`: Payment status
- `upnid`: Unique payment ID
- `created_at`: Timestamp of payment creation
- `created_by`: ID of the user who created this payment
- `modified_at`: Timestamp of the last modification
- `modified_by`: ID of the user who last modified this payment
- `is_deleted`: 1 if the payment is deleted, 0 (default) otherwise

## Usage

You can use the provided SQL scripts to create the Shopzen database schema and related tables. The scripts contain both schema creation and table creation statements.

Please make sure to update the database connection details in your application configuration to connect to this database.

Feel free to use these SQL scripts as a starting point for your e-commerce platform or customize them to fit your specific requirements.
