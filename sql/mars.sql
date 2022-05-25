CREATE TABLE crater (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name TEXT,
  diameter REAL, -- KM
  lat REAL,
  lng REAL
);

CREATE TABLE coordinates (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  horizontal REAL,
  horizontal_direction VARCHAR(1),
  vertical REAL,
  vertical_direction VARCHAR(1),
  crater_id FOREIGN KEY REFERENCES crater(id)
);


INSERT INTO crater (name, diameter, lat, lng) VALUES ("Huygens", 467.25, 13.96, 55.58);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Schiaparelli", 2.69, 16.79,	458.52);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 38.1, 167.15,	376.35);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Greeley", 36.63, 3.19,	457.45);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Cassini", 22.59, 32.11,	408.23);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Antoniadi", 21.59, 60.84,	400.95);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Dollfus", 20.99, 3.83,	363.08);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 59.01, 76.89,	341.1);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Tikhonravov", 12.92, 35.91,	343.7);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 23.39, 53.24,	340.12);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 0.99, 28.86,	325.8);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Newton", 40.52, 158.06,	299.94);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 59.53, 83.89,	301.99);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 24.47, 32.12,	300.36);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("de Vaucouleurs", 13.67, 171.09,	302.27);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Copernicus", 48.88, 168.82,	301.83);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Unnamed", 52.55, 109.57,	326.77);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Herschel", 14.15, 129.89,	297.92);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Schroeter", 1.89, 55.99,	291.59);
INSERT INTO crater (name, diameter, lat, lng) VALUES ("Koval'sky", 29.73, 141.43,	296.67);

-- All Craters
SELECT * FROM crater;

-- Largest Crater
SELECT name FROM crater ORDER BY diameter DESC LIMIT 1;

-- Smallest Crater
SELECT name FROM crater ORDER BY diameter ASC LIMIT 1;


CREATE PROCEDURE add_crater(
  name TEXT, 
  diameter REAL, 
  horizontal REAL, 
  horizontal_direction VARCHAR(1), 
  vertical REAL, 
  vertical_direction VARCHAR(1)
)

BEGIN
INSERT INTO crater (name, diameter, lat, lng) VALUES (name, diameter);
END