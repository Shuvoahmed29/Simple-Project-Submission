CREATE DATABASE bus_ticket_management;

USE bus_ticket_management;

-- Buses (bus_id (PK), bus_name, bus_type, total_seat)
CREATE TABLE buses(
    bus_id INT PRIMARY KEY,
    bus_name VARCHAR(50),
    bus_type VARCHAR(10),
    total_seat INT
);
INSERT INTO buses
(bus_id,bus_name,bus_type,total_seat)
VALUES
(101, 'GreenLine Express', 'AC', 40),
(102, 'Shyamoli Paribahan', 'Non-AC', 45),
(103, 'Hanif Enterprise', 'AC', 50),
(104, 'Nabil Paribahan', 'Non-AC', 52),
(105, 'Ena Transport', 'AC', 42),
(106, 'Desh Travels', 'Non-AC', 48),
(107, 'Shohagh Paribahan', 'AC', 36),
(108, 'Bikash Paribahan', 'Non-AC', 55),
(109, 'Sundarban Courier', 'AC', 38),
(110, 'Dhaka Express', 'Non-AC', 44);


-- Routes (route_id (PK), source, destination, fare)
CREATE TABLE routes(
    route_id INT PRIMARY KEY,
    source VARCHAR(50),
    destination VARCHAR(30),
    fare FLOAT
);
INSERT INTO routes
(route_id,source,destination,fare)
VALUES
(201, 'Dhaka', 'Chittagong', 500),
(202, 'Naogaon', 'Sylhet', 450),
(203, 'Dhaka', 'Rajshahi', 400),
(204, 'Dhaka', 'Khulna', 550),
(205, 'Rajshahi', 'Barisal', 480),
(206, 'Dhaka', 'Rangpur', 520),
(207, 'Dhaka', 'Mymensingh', 300),
(208, 'Chittagong', 'Cox\'s Bazar', 350),
(209, 'Sylhet', 'Moulvibazar', 250),
(210, 'Rajshahi', 'Naogaon', 200);


-- Bus_Route(bus_id(FK),route_id(FK))
CREATE TABLE bus_route(
    bus_route_bus_id INT,
    bus_route_route_id INT,
    Foreign Key (bus_route_bus_id) REFERENCES buses(bus_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    Foreign Key (bus_route_route_id) REFERENCES routes(route_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO bus_route
(bus_route_bus_id,bus_route_route_id)
VALUES
(101, 201),
(101, 202),
(102, 203),
(102, 204),
(103, 205),
(103, 206),
(104, 207),
(105, 208),
(106, 209),
(107, 210);


-- SELECT buses.bus_id,buses.bus_name,routes.source,routes.destination
-- FROM buses INNER JOIN bus_route INNER JOIN routes
-- ON buses.bus_id = bus_route.bus_route_bus_id 
-- AND routes.route_id = bus_route_route_id;


-- Passengers (passenger_id (PK), name, email, phone)
CREATE TABLE passengers(
    passenger_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(30),
    phone VARCHAR(15)
);

INSERT INTO passengers
(passenger_id,name,email,phone)
VALUES
(301, 'Rahim Uddin', 'rahim.uddin@example.com', '01710000001'),
(302, 'Karim Ali', 'karim.ali@example.com', '01710000002'),
(303, 'Sumi Akter', 'sumi.akter@example.com', '01710000003'),
(304, 'Fahim Hossain', 'fahim.hossain@example.com', '01710000004'),
(305, 'Nusrat Jahan', 'nusrat.jahan@example.com', '01710000005'),
(306, 'Sajid Khan', 'sajid.khan@example.com', '01710000006'),
(307, 'Mehzabin Rahman', 'mehzabin.rahman@example.com', '01710000007'),
(308, 'Tanjim Ahmed', 'tanjim.ahmed@example.com', '01710000008'),
(309, 'Razia Sultana', 'razia.sultana@example.com', '01710000009'),
(310, 'Anik Chowdhury', 'anik.chowdhury@example.com', '01710000010');


-- Bookings (booking_id (PK), booking_date, seat_number,passenger_id(FK),route_id(FK))
CREATE Table booking(
    booking_id INT PRIMARY KEY,
    booking_date DATE,
    seat_number INT,
    pass_id INT,
    rot_id INT,
    Foreign Key (pass_id) REFERENCES passengers(passenger_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    Foreign Key (rot_id) REFERENCES routes(route_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO booking
(booking_id,booking_date,seat_number,pass_id,rot_id)
VALUES
(401, '2024-12-21', 1, 301, 201),
(402, '2024-12-21', 2, 302, 202),
(403, '2024-12-21', 3, 303, 203),
(404, '2024-12-21', 4, 304, 204),
(405, '2024-12-21', 5, 305, 205),
(406, '2024-12-22', 6, 306, 206),
(407, '2024-12-22', 7, 307, 207),
(408, '2024-12-22', 8, 308, 208),
(409, '2024-12-22', 9, 309, 209),
(410, '2024-12-22', 10, 310, 210),
(411, '2024-12-23', 1, 301, 210),
(412, '2024-12-23', 2, 302, 209),
(413, '2024-12-23', 3, 303, 208),
(414, '2024-12-23', 4, 304, 207),
(415, '2024-12-23', 5, 305, 206),
(416, '2024-12-24', 6, 306, 205),
(417, '2024-12-24', 7, 307, 204),
(418, '2024-12-24', 8, 308, 203),
(419, '2024-12-24', 9, 309, 202),
(420, '2024-12-24', 10, 310, 201);



SELECT 
passengers.name as Passenger,
passengers.phone as Phone,
booking.booking_date as Date,
routes.fare as Vara,
booking.seat_number as Seat,
routes.source as Source,
routes.destination as Destination,
buses.bus_name as Bus,
buses.bus_type as Type
FROM buses INNER JOIN bus_route INNER JOIN routes INNER JOIN booking INNER JOIN passengers
ON buses.bus_id = bus_route.bus_route_bus_id
AND routes.route_id = bus_route.bus_route_route_id
AND routes.route_id = booking.rot_id
AND booking.pass_id = passengers.passenger_id;


