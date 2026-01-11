CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category_id INT NOT NULL REFERENCES categories(category_id),
    price DECIMAL(12,2) NOT NULL,
    launch_date DATE,
    stock INT DEFAULT 100
);

INSERT INTO products (name, category_id, price, launch_date, stock) VALUES
-- Electronics - Smartphones
('Samsung Galaxy S24 Ultra 5G', 30, 124999.00, '2024-01-15', 450),
('Apple iPhone 15 Pro Max', 31, 159900.00, '2023-09-20', 320),
('OnePlus 12R 5G', 30, 42999.00, '2024-02-10', 680),
('Xiaomi Redmi Note 13 Pro', 30, 24999.00, '2024-03-05', 920),
('Realme GT 6 Pro 5G', 30, 38999.00, '2024-04-12', 540),
('Vivo V30 Pro 5G', 30, 41999.00, '2024-02-28', 470),
('POCO X6 Pro 5G', 32, 26999.00, '2024-01-22', 780),
('Motorola Edge 50 Fusion', 30, 22999.00, '2024-05-08', 630),
('Nothing Phone 2a', 30, 23999.00, '2024-03-18', 550),
('Samsung Galaxy M35 5G', 30, 17999.00, '2024-06-01', 890),

-- Electronics - Laptops
('Dell Inspiron 15 3520', 35, 52990.00, '2023-08-10', 280),
('HP Pavilion 14 AMD Ryzen 5', 35, 54990.00, '2023-10-15', 310),
('Lenovo IdeaPad Slim 3', 35, 42990.00, '2024-01-05', 420),
('ASUS VivoBook 15', 35, 47990.00, '2023-11-20', 360),
('Acer Aspire 5 Gaming', 18, 68990.00, '2024-02-14', 195),
('MSI GF63 Thin Gaming Laptop', 18, 74990.00, '2024-03-10', 145),
('Apple MacBook Air M2', 35, 114900.00, '2023-07-15', 220),

-- Electronics - Audio
('boAt Airdopes 131', 37, 1299.00, '2023-09-01', 1450),
('Noise Buds VS104', 37, 999.00, '2024-01-10', 1380),
('Sony WH-1000XM5', 20, 29990.00, '2023-08-20', 280),
('JBL Flip 6 Bluetooth Speaker', 22, 12999.00, '2023-10-05', 520),
('boAt Rockerz 450', 20, 1499.00, '2023-07-12', 980),
('OnePlus Bullets Z2', 38, 1999.00, '2024-02-05', 870),

-- Electronics - Smart Devices
('Noise ColorFit Pro 5 Max', 41, 3499.00, '2024-03-15', 1120),
('Fire-Boltt Phoenix Ultra', 41, 2999.00, '2024-02-20', 1050),
('Apple Watch SE 2nd Gen', 42, 29900.00, '2023-09-10', 180),
('Amazon Echo Dot 5th Gen', 29, 4499.00, '2023-11-01', 750),

-- Fashion - Mens Clothing
('Allen Solly Men Formal Shirt', 61, 1299.00, '2023-08-15', 580),
('Peter England Casual Shirt', 62, 899.00, '2023-09-20', 720),
('Levi\'s 511 Slim Fit Jeans', 63, 2999.00, '2023-10-10', 420),
('Flying Machine Jeans', 64, 1799.00, '2023-11-05', 510),
('Roadster Men Graphic T-Shirt', 65, 499.00, '2024-01-15', 890),
('H&M Plain T-Shirt', 66, 699.00, '2024-02-10', 760),
('Manyavar Silk Kurta Pajama', 50, 3499.00, '2023-09-01', 320),

-- Fashion - Womens Clothing
('Soch Banarasi Silk Saree', 67, 4999.00, '2023-10-01', 280),
('FabIndia Cotton Saree', 68, 2499.00, '2023-11-10', 410),
('BIBA Designer Kurti', 69, 1799.00, '2024-01-20', 650),
('W Casual Kurti', 70, 899.00, '2024-02-15', 780),
('Zara Women Jeans', 54, 2499.00, '2024-03-05', 520),
('Nykaa Fashion Tops', 53, 799.00, '2024-04-10', 680),

-- Fashion - Footwear
('Nike Revolution 7 Running Shoes', 73, 3995.00, '2023-08-20', 450),
('Puma Softride Running Shoes', 73, 2999.00, '2023-09-15', 520),
('Adidas Ultraboost 23', 73, 8999.00, '2024-01-10', 280),
('Campus Men Casual Sneakers', 74, 1299.00, '2024-02-20', 780),
('Sparx Running Shoes', 73, 1499.00, '2023-10-05', 820),
('Bata Men Formal Shoes', 55, 1899.00, '2023-11-12', 560),
('Liberty Womens Sandals', 56, 799.00, '2024-03-01', 640),
('Red Tape Mens Loafers', 55, 2499.00, '2024-04-15', 390),

-- Fashion - Watches
('Titan Steel Watch Men', 58, 3995.00, '2023-09-10', 420),
('Fastrack Analog Watch', 58, 1495.00, '2023-10-20', 580),
('Sonata Digital Watch', 59, 995.00, '2024-01-05', 720),

-- Home & Kitchen
('Wipro Garnet 3 Seater Sofa', 85, 24999.00, '2023-08-01', 95),
('Urban Ladder Recliner', 86, 18999.00, '2023-09-15', 125),
('Wakefit Orthopedic Mattress Queen', 87, 14999.00, '2023-10-01', 180),
('Durian King Size Bed', 88, 32999.00, '2023-11-10', 85),
('Prestige Omega Deluxe Granite Cookware', 89, 3499.00, '2024-01-15', 420),
('Hawkins Stainless Steel Pressure Cooker', 90, 2199.00, '2023-12-05', 580),
('Philips Air Fryer HD9252', 72, 8995.00, '2024-02-10', 310),
('Bajaj Majesty RX11 Mixer Grinder', 78, 3499.00, '2023-11-20', 460),
('Wonderchef Non-Stick Cookware Set', 89, 4999.00, '2024-03-01', 320),

-- Home Appliances
('LG 7 Kg Washing Machine', 26, 22990.00, '2023-10-05', 165),
('Samsung 253L Refrigerator', 27, 24990.00, '2023-11-15', 145),
('Whirlpool 1.5 Ton 3 Star AC', 28, 32990.00, '2024-02-20', 125),
('Voltas 1 Ton 5 Star AC', 28, 28990.00, '2024-03-10', 135),

-- Beauty & Personal Care
('Lakme 9to5 Primer Matte Lipstick', 97, 499.00, '2024-01-10', 820),
('Maybelline Fit Me Foundation', 98, 699.00, '2024-02-05', 680),
('Nivea Soft Light Moisturizer', 95, 299.00, '2023-10-15', 1050),
('Himalaya Purifying Neem Face Wash', 96, 175.00, '2023-11-01', 1280),
('Pantene Hair Fall Control Shampoo', 97, 349.00, '2023-12-10', 920),
('Parachute Advansed Hair Oil', 98, 249.00, '2024-01-20', 1100),
('Fogg Black Deodorant', 102, 199.00, '2023-09-15', 980),
('Engage M1 Perfume', 101, 299.00, '2023-10-20', 860),

-- Books
('The Palace of Illusions by Chitra Banerjee', 107, 350.00, '2023-08-01', 420),
('The White Tiger by Aravind Adiga', 107, 299.00, '2023-09-10', 380),
('Atomic Habits by James Clear', 109, 599.00, '2023-10-15', 680),
('Elon Musk by Walter Isaacson', 110, 799.00, '2023-11-05', 520),
('HC Verma Concepts of Physics', 111, 899.00, '2023-08-20', 450),
('Gray\'s Anatomy 42nd Edition', 112, 3999.00, '2023-09-25', 180),

-- Sports & Fitness
('Boldfit Gym Dumbbells 5kg Set', 115, 999.00, '2024-01-10', 680),
('Lifelong Treadmill for Home', 116, 18999.00, '2024-02-15', 95),
('Nivia Storm Football Size 5', 6, 799.00, '2023-11-01', 520),
('Yonex Mavis 350 Badminton Shuttlecock', 6, 999.00, '2023-12-05', 480),
('Boldfit Gym Trackpants', 117, 599.00, '2024-01-20', 720),
('Strauss Yoga Mat Anti Skid', 118, 499.00, '2023-10-10', 640),

-- Grocery & Snacks
('Haldiram Aloo Bhujia 1kg', 119, 199.00, '2024-01-05', 1350),
('Britannia Good Day Cookies', 119, 50.00, '2023-12-15', 1480),
('Nescafe Classic Coffee', 120, 399.00, '2024-02-01', 980),
('Red Label Tea 1kg', 120, 449.00, '2023-11-20', 1120);