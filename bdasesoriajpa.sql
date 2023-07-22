CREATE DATABASE asesoriajpa;

CREATE USER 'adminjpa'@'localhost' IDENTIFIED BY 'admin';

GRANT ALL PRIVILEGES ON asesoriajpa.* TO 'adminjpa'@'localhost';

USE asesoriajpa;


DESCRIBE capacitacion;
INSERT INTO capacitacion (nombre_capacitacion, hora, duracion, lugar, asistentes)
VALUES
  ('Accidentes mortales', '09:00', '2 horas', 'Sala A', 20),
  ('Desmembramiento leve', '14:30', '1 hora', 'Sala B', 15),
  ('Primeros auxilios', '11:00', '3 horas', 'Sala C', 30),
  ('Reanimacion', '13:45', '1.5 horas', 'Sala C', 25),
  ('Prevencion incendios', '10:30', '2.5 horas', 'Sala A', 18);
  
DESCRIBE clientes;
INSERT INTO clientes (rut_cliente, nombre, apellido, telefono) VALUES
('12345678-9', 'Juan', 'González', '+569-91234567'),
('23456789-0', 'María', 'Rodríguez', '+569-98765432'),
('34567890-1', 'Pedro', 'Martínez', '+569-87654321'),
('45678901-2', 'Ana', 'López', '+569-76543210'),
('56789012-3', 'Luis', 'Gómez', '+569-65432109'),
('67890123-4', 'Carmen', 'Pérez', '+569-54321098'),
('78901234-5', 'Manuel', 'Fernández', '+569-43210987'),
('89012345-6', 'Laura', 'Sánchez', '+569-32109876');

DESCRIBE usuarios;
INSERT INTO usuarios (rut_usuario, nombre, password, rol) VALUES 
(11111111-1,'juan', '$2a$10$V6XTzW2LPVVOGqPpYZbKjeyzcvLiZWsDustysIqcs8T3nQ7IyIvJa', 'ADMIN'),
(22222222-2,'miguel', '$2a$10$br285zcBWkWzay7AB9FVveywJxBWXyCmcYnAnYciSuuxiy/0PtNbG', 'CLIENTE'),
(33333333-3,'christian', '$$2a$10$6.0FWGHHU2NxtsEUYovbyujr83lkcFNqX7sakAoFL0YqsoRhmscAm', 'ADMINISTRATIVO');

  