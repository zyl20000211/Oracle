-- Insert sample distributors
INSERT INTO distributor (name, email, phone) VALUES
('Nike Inc.', 'contact@nike.com', '123-456-7890'),
('Adidas Group', 'info@adidas.com', '234-567-8901'),
('Puma SE', 'sales@puma.com', '345-678-9012'),
('New Balance', 'support@newbalance.com', '456-789-0123'),
('Reebok', 'contact@reebok.com', '567-890-1234');

-- Insert sample customers
INSERT INTO customer (name, email, phone, dob, address) VALUES
('John Doe', 'john.doe@email.com', '111-222-3333', '1990-05-15', '123 Elm Street, NY'),
('Jane Smith', 'jane.smith@email.com', '222-333-4444', '1985-07-21', '456 Maple Ave, CA'),
('Alice Johnson', 'alice.johnson@email.com', '333-444-5555', '1992-03-12', '789 Oak Drive, TX'),
('Bob Brown', 'bob.brown@email.com', '444-555-6666', '1988-11-05', '159 Pine Road, FL'),
('Charlie Green', 'charlie.green@email.com', '555-666-7777', '1995-06-30', '753 Birch Lane, WA'),
('Daniel White', 'daniel.white@email.com', '666-777-8888', '1987-12-10', '951 Cedar Blvd, NV'),
('Eve Black', 'eve.black@email.com', '777-888-9999', '1993-04-25', '852 Spruce Ave, IL'),
('Frank Harris', 'frank.harris@email.com', '888-999-0000', '1991-09-14', '369 Redwood St, MI'),
('Grace Lee', 'grace.lee@email.com', '999-000-1111', '1986-02-20', '147 Willow St, OH'),
('Henry Adams', 'henry.adams@email.com', '000-111-2222', '1994-08-07', '951 Juniper Ct, MA');

-- Insert sample products
INSERT INTO product (name, description, price, distributor_id) VALUES
('Nike Air Max', 'Running shoes with air cushioning', 120.00, 1),
('Adidas Ultraboost', 'High-performance running shoes', 150.00, 2),
('Puma Ignite', 'Lightweight training shoes', 100.00, 3),
('New Balance 574', 'Classic sneakers for everyday wear', 80.00, 4),
('Reebok Nano X', 'Crossfit training shoes', 130.00, 5),
('Nike React Infinity', 'Running shoes for long distances', 140.00, 1),
('Adidas Stan Smith', 'Iconic tennis shoes', 90.00, 2),
('Puma Future Rider', 'Casual sneakers with a retro design', 110.00, 3),
('New Balance Fresh Foam', 'Soft cushioning running shoes', 130.00, 4),
('Reebok Club C', 'Classic leather tennis shoes', 75.00, 5);

-- Insert sample stores
INSERT INTO store (name, location) VALUES
('Downtown Shoe Store', 'New York, NY'),
('West Coast Shoes', 'Los Angeles, CA'),
('Midwest Footwear', 'Chicago, IL'),
('Southern Sneakers', 'Houston, TX'),
('Mountain Sports', 'Denver, CO');

-- Insert sample inventory
INSERT INTO inventory (product_id, quantity, inventory_date, store_id) VALUES
(1, 50, '2024-03-01', 1),
(2, 40, '2024-03-01', 2),
(3, 60, '2024-03-01', 3),
(4, 30, '2024-03-01', 4),
(5, 20, '2024-03-01', 5),
(6, 50, '2024-03-02', 1),
(7, 35, '2024-03-02', 2),
(8, 55, '2024-03-02', 3),
(9, 25, '2024-03-02', 4),
(10, 45, '2024-03-02', 5);

-- Insert sample employees
INSERT INTO employee (name, email, role, store_id) VALUES
('Tom Wilson', 'tom.wilson@email.com', 'Manager', 1),
('Lisa Green', 'lisa.green@email.com', 'Cashier', 2),
('David Black', 'david.black@email.com', 'Sales Associate', 3),
('Emily White', 'emily.white@email.com', 'Manager', 4),
('Chris Blue', 'chris.blue@email.com', 'Sales Associate', 5);

-- Insert sample purchases
INSERT INTO purchase (customer_id, employee_id, product_id, total_amount, date) VALUES
(1, 1, 2, 150.00, '2024-03-10'),
(2, 2, 3, 100.00, '2024-03-11'),
(3, 3, 5, 130.00, '2024-03-12'),
(4, 4, 7, 90.00, '2024-03-13'),
(5, 5, 9, 130.00, '2024-03-14');