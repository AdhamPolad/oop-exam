CREATE TABLE catagories(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    parent_id INT,
    FOREIGN KEY(parent_id) REFERENCES catagories(id) ON DELETE CASCADE

)

CREATE TABLE products(
    id INT AUTO-INCREMENT PRIMARY  KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price decimal(10,2) NOT NULL
)



CREATE TABLE products_catagories(
    products_id INT,
    catagories_id INT,
    PRIMARY KEY(products_id, catagories_id)
    FOREIGN KEY (products_id) REFERENCES products(id) ON DELETE CASCADE
    FOREIGN KEY (catagories_id) REFERENCES catagories(id) ON DELETE CASCADE
)


INSERT INTO products (name, description, price) VALUES ('Laptop 1', 'High-performance laptop', 1500.00);
INSERT INTO products (name, description, price) VALUES ('Laptop 2', 'Budget laptop', 800.00);
INSERT INTO products (name, description, price) VALUES ('Smartphone 1', 'Flagship smartphone', 1200.00);
INSERT INTO products (name, description, price) VALUES ('Smartphone 2', 'Mid-range smartphone', 600.00);