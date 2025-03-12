CREATE TABLE railroad (
    id SERIAL PRIMARY KEY,
    railroad_name VARCHAR(255) NOT NULL,
    segment VARCHAR(50) CHECK (segment IN ('Large', 'Small')) NOT NULL
);

-- Create Equipment Table
CREATE TABLE equipment (
    id SERIAL PRIMARY KEY,
    equipment_name VARCHAR(255) NOT NULL,
    daily_rate DECIMAL(10,2) NOT NULL
);

-- Create Lease Table
CREATE TABLE lease (
    id SERIAL PRIMARY KEY,
    railroad_id INT REFERENCES railroad(id) ON DELETE CASCADE,
    equipment_id INT REFERENCES equipment(id) ON DELETE CASCADE,
    days_leased INT NOT NULL CHECK (days_leased > 0),
    total_revenue DECIMAL(10,2) NOT NULL
);


