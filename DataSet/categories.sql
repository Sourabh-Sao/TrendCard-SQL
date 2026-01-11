
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    parent_category_id INT REFERENCES categories(category_id),
    level INT NOT NULL
);


-- Level 1: Top categories
INSERT INTO categories (name, parent_category_id, level) VALUES
('Electronics', NULL, 1),
('Fashion', NULL, 1),
('Home & Kitchen', NULL, 1),
('Beauty & Personal Care', NULL, 1),
('Books & Media', NULL, 1),
('Sports & Fitness', NULL, 1),
('Grocery & Gourmet', NULL, 1);

-- Level 2: Electronics subcategories
INSERT INTO categories (name, parent_category_id, level) VALUES
('Mobiles & Tablets', 1, 2),
('Laptops & Computers', 1, 2),
('Audio & Headphones', 1, 2),
('Cameras & Photography', 1, 2),
('Home Appliances', 1, 2),
('Smart Devices', 1, 2);

-- Level 3: Electronics deeper subcategories
INSERT INTO categories (name, parent_category_id, level) VALUES
('Smartphones', 8, 3),
('Feature Phones', 8, 3),
('Tablets', 8, 3),
('Laptops', 9, 3),
('Desktops', 9, 3),
('Gaming Laptops', 9, 3),
('Bluetooth Earphones', 10, 3),
('Wired Headphones', 10, 3),
('Speakers', 10, 3),
('DSLR Cameras', 11, 3),
('Action Cameras', 11, 3),
('Washing Machines', 12, 3),
('Refrigerators', 12, 3),
('Air Conditioners', 12, 3),
('Smartwatches', 13, 3),
('Smart Home Devices', 13, 3);

-- Level 4: Electronics deepest level
INSERT INTO categories (name, parent_category_id, level) VALUES
('Android Phones', 14, 4),
('iPhones', 14, 4),
('Gaming Phones', 14, 4),
('Budget Tablets', 16, 4),
('Premium Tablets', 16, 4),
('Business Laptops', 17, 4),
('Student Laptops', 17, 4),
('TWS Earbuds', 20, 4),
('Neckband Earphones', 20, 4),
('Professional DSLR', 23, 4),
('Entry Level DSLR', 23, 4),
('Fitness Smartwatches', 28, 4),
('Luxury Smartwatches', 28, 4);

-- Level 2: Fashion subcategories
INSERT INTO categories (name, parent_category_id, level) VALUES
('Mens Clothing', 2, 2),
('Womens Clothing', 2, 2),
('Kids Clothing', 2, 2),
('Footwear', 2, 2),
('Watches & Accessories', 2, 2);

-- Level 3: Fashion deeper subcategories
INSERT INTO categories (name, parent_category_id, level) VALUES
('Mens Shirts', 42, 3),
('Mens Jeans', 42, 3),
('Mens T-Shirts', 42, 3),
('Mens Ethnic', 42, 3),
('Womens Sarees', 43, 3),
('Womens Kurtis', 43, 3),
('Womens Tops', 43, 3),
('Womens Jeans', 43, 3),
('Boys Clothing', 44, 3),
('Girls Clothing', 44, 3),
('Mens Shoes', 45, 3),
('Womens Shoes', 45, 3),
('Sports Shoes', 45, 3),
('Mens Watches', 46, 3),
('Womens Watches', 46, 3),
('Jewellery', 46, 3);

-- Level 4: Fashion deepest level
INSERT INTO categories (name, parent_category_id, level) VALUES
('Formal Shirts', 47, 4),
('Casual Shirts', 47, 4),
('Skinny Jeans', 48, 4),
('Regular Fit Jeans', 48, 4),
('Graphic T-Shirts', 49, 4),
('Plain T-Shirts', 49, 4),
('Silk Sarees', 51, 4),
('Cotton Sarees', 51, 4),
('Designer Kurtis', 52, 4),
('Casual Kurtis', 52, 4),
('Running Shoes', 57, 4),
('Casual Sneakers', 57, 4);

-- Level 2: Home & Kitchen subcategories
INSERT INTO categories (name, parent_category_id, level) VALUES
('Furniture', 3, 2),
('Kitchen Appliances', 3, 2),
('Home Decor', 3, 2),
('Bedding & Linen', 3, 2);

-- Level 3: Home & Kitchen deeper
INSERT INTO categories (name, parent_category_id, level) VALUES
('Sofas & Seating', 71, 3),
('Beds & Mattresses', 71, 3),
('Dining Tables', 71, 3),
('Mixers & Grinders', 72, 3),
('Cookware', 72, 3),
('Wall Decor', 73, 3),
('Lighting', 73, 3),
('Bedsheets', 74, 3),
('Pillows', 74, 3);

-- Level 4: Home & Kitchen deepest
INSERT INTO categories (name, parent_category_id, level) VALUES
('3 Seater Sofas', 75, 4),
('Recliners', 75, 4),
('Queen Size Beds', 76, 4),
('King Size Beds', 76, 4),
('Non-Stick Cookware', 79, 4),
('Steel Cookware', 79, 4);

-- Level 2: Beauty & Personal Care
INSERT INTO categories (name, parent_category_id, level) VALUES
('Skincare', 4, 2),
('Haircare', 4, 2),
('Makeup', 4, 2),
('Fragrances', 4, 2);

-- Level 3: Beauty deeper
INSERT INTO categories (name, parent_category_id, level) VALUES
('Face Creams', 91, 3),
('Face Wash', 91, 3),
('Shampoos', 92, 3),
('Hair Oils', 92, 3),
('Lipsticks', 93, 3),
('Foundations', 93, 3),
('Perfumes', 94, 3),
('Deodorants', 94, 3);

-- Level 2: Books & Media
INSERT INTO categories (name, parent_category_id, level) VALUES
('Fiction Books', 5, 2),
('Non-Fiction Books', 5, 2),
('Academic Books', 5, 2);

-- Level 3: Books deeper
INSERT INTO categories (name, parent_category_id, level) VALUES
('Indian Fiction', 103, 3),
('International Fiction', 103, 3),
('Self Help', 104, 3),
('Biography', 104, 3),
('Engineering Books', 105, 3),
('Medical Books', 105, 3);

-- Level 2: Sports & Fitness
INSERT INTO categories (name, parent_category_id, level) VALUES
('Gym Equipment', 6, 2),
('Sportswear', 6, 2),
('Yoga Equipment', 6, 2);

-- Level 3: Sports deeper
INSERT INTO categories (name, parent_category_id, level) VALUES
('Dumbbells', 112, 3),
('Treadmills', 112, 3),
('Gym Wear', 113, 3),
('Yoga Mats', 114, 3);

-- Level 2: Grocery
INSERT INTO categories (name, parent_category_id, level) VALUES
('Snacks', 7, 2),
('Beverages', 7, 2);
