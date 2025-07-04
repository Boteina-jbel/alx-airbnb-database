-- Insert sample Guests
INSERT INTO Guests (first_name, last_name, email, phone) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '555-1234'),
('Bob', 'Smith', 'bob.smith@example.com', '555-5678'),
('Carol', 'Davis', 'carol.davis@example.com', '555-8765');

-- Insert sample Properties
INSERT INTO Properties (owner_id, title, description, address, city, country, price_per_night) VALUES
(1, 'Cozy Downtown Apartment', 'A cozy apartment in the heart of the city.', '123 Main St', 'New York', 'USA', 120.00),
(2, 'Beachside Villa', 'Beautiful villa with ocean views.', '456 Ocean Dr', 'Miami', 'USA', 350.00),
(3, 'Mountain Cabin', 'Rustic cabin close to hiking trails.', '789 Pine Rd', 'Denver', 'USA', 200.00);

-- Insert sample Amenities
INSERT INTO Amenities (name) VALUES
('WiFi'),
('Air Conditioning'),
('Pool'),
('Parking'),
('Kitchen');

-- Link Amenities to Properties
INSERT INTO Amenities_Properties (property_id, amenity_id) VALUES
(1, 1), -- Cozy Apartment has WiFi
(1, 2), -- and Air Conditioning
(2, 1), -- Beachside Villa has WiFi
(2, 3), -- Pool
(2, 4), -- Parking
(3, 1), -- Mountain Cabin WiFi
(3, 5); -- Kitchen

-- Insert sample Bookings
INSERT INTO Bookings (guest_id, property_id, check_in, check_out, status) VALUES
(1, 2, '2025-08-01', '2025-08-07', 'confirmed'),
(2, 1, '2025-07-15', '2025-07-20', 'pending'),
(3, 3, '2025-09-10', '2025-09-15', 'cancelled');

-- Insert sample Payments
INSERT INTO Payments (booking_id, amount, payment_method, status) VALUES
(1, 2450.00, 'Credit Card', 'completed'),
(2, 600.00, 'PayPal', 'pending');
