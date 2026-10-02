-- create users table

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    role VARCHAR(20) NOT NULL
        CHECK (role IN ('admin', 'customer'))
);

-- create vehicles table

CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    vehicle_name VARCHAR(100) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL
        CHECK (vehicle_type IN ('car', 'bike', 'truck')),
    model VARCHAR(100) NOT NULL,
    registration_number VARCHAR(50) UNIQUE NOT NULL,
    rental_price_per_day DECIMAL(10, 2) NOT NULL,
    availability_status VARCHAR(20) NOT NULL
        CHECK (availability_status IN ('available', 'rented', 'maintenance'))
);

-- create bookings table

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,

    user_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,

    start_date DATE NOT NULL,
    end_date DATE NOT NULL,

    booking_status VARCHAR(20) NOT NULL
        CHECK (
            booking_status IN (
                'pending',
                'confirmed',
                'completed',
                'cancelled'
            )
        ),

    total_cost DECIMAL(10, 2) NOT NULL,

    FOREIGN KEY (user_id)
        REFERENCES users(id),

    FOREIGN KEY (vehicle_id)
        REFERENCES vehicles(id)
);