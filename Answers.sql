-- CATEGORY TABLE
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    product_category VARCHAR(50) NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- BRAND TABLE
CREATE TABLE Brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- PRODUCT TABLE
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- VARIATIONS TABLE
CREATE TABLE Variations (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    variation_name VARCHAR(50) NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- VARIATION OPTIONS TABLE
CREATE TABLE Variation_Option (
    option_id INT AUTO_INCREMENT PRIMARY KEY,
    variation_id INT NOT NULL,
    category_id INT NOT NULL,
    variation_option VARCHAR(50) NOT NULL,
    unit VARCHAR(20),
    product_price DECIMAL(10,2) NOT NULL,
    date_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (variation_id) REFERENCES Variations(variation_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);
