-- insert users

INSERT INTO users (name, email, password, phone, role)
VALUES
('Rahim Ahmed', 'rahim@gmail.com', 'password123', '01711111111', 'customer'),
('Karim Hasan', 'karim@gmail.com', 'password123', '01822222222', 'customer'),
('Nusrat Jahan', 'nusrat@gmail.com', 'password123', '01933333333', 'customer'),
('Sauda Tus Sahadia', 'sauda@gmail.com', 'password123', '01644444444', 'customer'),
('Admin User', 'admin@gmail.com', 'admin123', '01555555555', 'admin');


-- insert vehicles

INSERT INTO vehicles (
    vehicle_name,
    vehicle_type,
    model,
    registration_number,
    rental_price_per_day,
    availability_status
)
VALUES
('Toyota Corolla', 'car', '2022', 'DHAKA-1234', 3500.00, 'available'),
('Honda Civic', 'car', '2021', 'DHAKA-5678', 4000.00, 'rented'),
('Toyota Axio', 'car', '2020', 'DHAKA-9012', 3000.00, 'available'),
('Yamaha R15', 'bike', '2023', 'DHAKA-3456', 1500.00, 'available'),
('Suzuki Gixxer', 'bike', '2022', 'DHAKA-7890', 1200.00, 'maintenance'),
('Mitsubishi Fuso', 'truck', '2021', 'DHAKA-2468', 6000.00, 'available'),
('Nissan X-Trail', 'car', '2023', 'DHAKA-1357', 5000.00, 'available'),
('Toyota Premio', 'car', '2019', 'DHAKA-8642', 3200.00, 'available');


-- insert bookings

INSERT INTO bookings (
    user_id,
    vehicle_id,
    start_date,
    end_date,
    booking_status,
    total_cost
)
VALUES
(1, 1, '2026-09-01', '2026-09-03', 'completed', 10500.00),

(2, 1, '2026-09-05', '2026-09-07', 'completed', 10500.00),

(3, 1, '2026-09-10', '2026-09-12', 'completed', 10500.00),

(4, 1, '2026-09-15', '2026-09-18', 'confirmed', 14000.00),

(1, 2, '2026-09-20', '2026-09-22', 'completed', 12000.00),

(2, 3, '2026-09-25', '2026-09-27', 'confirmed', 9000.00),

(3, 4, '2026-09-28', '2026-09-29', 'pending', 1500.00),

(4, 5, '2026-09-12', '2026-09-13', 'cancelled', 1200.00);