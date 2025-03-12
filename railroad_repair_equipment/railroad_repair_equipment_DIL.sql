INSERT INTO railroad (id, railroad_name, segment) VALUES
(1, 'Union Pacific', 'Large'),
(2, 'BNSF', 'Large'),
(3, 'Norfolk Southern', 'Large'),
(4, 'Amtrak', 'Small'),
(5, 'Florida East Coast', 'Small');

INSERT INTO equipment (id, equipment_name, daily_rate) VALUES
(1, 'Track Stabilizer', 500.00),
(2, 'Tie Crane', 300.00),
(3, 'Ballast Regulator', 400.00),
(4, 'Rail Grinder', 600.00),
(5, 'Spike Puller', 250.00);

INSERT INTO lease (id, railroad_id, equipment_id, days_leased, total_revenue) VALUES
(1, 1, 1, 5, 2500.00),
(2, 2, 2, 10, 3000.00),
(3, 3, 2, 3, 900.00),
(4, 1, 4, 2, 1200.00),
(5, 4, 3, 8, 3200.00);