# Grocer_Products
SQL schema for a small-scale Ecommerce platform. Includes tables for products, brands, categories, variations, and price options with relational integrity and timestamps.

# 🛒 Ecommerce Database Schema

This project contains a fully normalized SQL schema for a small-scale Ecommerce or vendor inventory system. It is designed for vendors or developers looking to organize product data efficiently using relational database principles.

## 📦 Project Structure

The database schema includes the following tables:

- **Category** – Represents product categories (e.g., Fruits, Electronics).
- **Brand** – Stores the brand/manufacturer details.
- **Product** – Links each product to a brand and category.
- **Variations** – Captures variation types (e.g., Size, Weight) related to a product category.
- **Variation_Option** – Stores the possible values for each variation (e.g., 1kg, 5kg), including price and unit.

All tables include:
- Primary Keys
- Foreign Keys to establish relationships
- `AUTO_INCREMENT` for unique identifiers
- `date_updated` field for tracking changes

## ⚙️ Technologies

- **SQL**
- Compatible with **MySQL** and **MariaDB**
- Designed using **draw.io** for ERD (Entity Relationship Diagram)

## 🧰 Use Cases

- Inventory management systems
- Ecommerce backend setup
- Academic database design practice
- Market vendor record-keeping tools

## 🚀 Getting Started

1. Clone the repository
2. Run the SQL script in your MySQL-compatible DBMS
3. Extend and customize as needed!

## 📂 Example: Table – `Variation_Option`

| option_id | variation_id | category_id | variation_option | unit | product_price | date_updated        |
|-----------|--------------|-------------|------------------|------|----------------|---------------------|
| 1         | 2            | 1           | 1kg              | kg   | 1000.00        | 2025-04-24 13:00:00 |

## 📌 Notes

- Schema supports future scalability (e.g., many-to-many product features).
- Can be expanded with additional fields such as stock levels, suppliers, etc.

## 📷 ERD Preview

> The full Entity Relationship Diagram (ERD) is included in the `/assets` folder as a `.drawio` file.

## 🧑‍💻 Author

Built with ❤️ by [Your Name]

---

