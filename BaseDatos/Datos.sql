use BDTallerMecanico

INSERT INTO Clientes (DNI, Apellidos, Nombre, Direccion, CP, Poblacion, Telefono, Telefono2) VALUES
('12345678', 'García Pérez', 'Ana', 'Calle Mayor 123', '28001', 'Madrid', '911234567', '612345678'),
('87654321', 'López Martínez', 'Juan', 'Avenida Central 45', '08001', 'Barcelona', '939876543', '698765432'),
('56781234', 'Rodríguez Díaz', 'María', 'Plaza España 10', '41001', 'Sevilla', '954567890', '654567890'),
('43218765', 'Sánchez Ruiz', 'Pedro', 'Calle Real 22', '35001', 'Las Palmas', '928123456', '628123456'),
('98765432', 'Fernández Gómez', 'Luisa', 'Paseo Marítimo 8', '29001', 'Málaga', '952987654', '695298765');


INSERT INTO Coches (Matricula, CNCPropietario, Marca, Modelo, Color, Km) VALUES
('M-1234-AB', 12345678, 'Seat', 'Ibiza', 'Rojo', 50000),
('B-5678-CD', 87654321, 'Renault', 'Clio', 'Azul', 75000),
('SE-9012-EF', 56781234, 'Peugeot', '208', 'Blanco', 30000),
('GC-3456-GH', 43218765, 'Ford', 'Focus', 'Negro', 90000),
('MA-7890-IJ', 98765432, 'Citroën', 'C3', 'Gris', 60000);


INSERT INTO Reparaciones (NumReparacion, Matricula, Descripcion, FechaEntrada, FechaSalida, Horas) VALUES
(1, 'M-1234-AB', 'Cambio de aceite y filtros', '2023-10-26', '2023-10-26', 2.5),
(2, 'B-5678-CD', 'Reparación de frenos', '2023-10-27', '2023-10-28', 4.0),
(3, 'SE-9012-EF', 'Cambio de neumáticos', '2023-10-28', '2023-10-28', 1.5),
(4, 'GC-3456-GH', 'Reparación de motor', '2023-10-29', '2023-10-30', 6.0),
(5, 'MA-7890-IJ', 'Revisión general', '2023-10-30', '2023-10-30', 3.0);


INSERT INTO Piezas (Referencia, Descripcion, Precio, Stock) VALUES
('ACEITE10W40', 'Aceite 10W40', 30.00, 100),
('FILTROAIRE', 'Filtro de aire', 15.00, 50),
('PASTILLASFR', 'Pastillas freno', 40.00, 20),
('NEUMATICO', 'Neumático 195/65R15', 80.00, 30),
('BUJIA', 'Bujía', 10.00, 100);

INSERT INTO DetallesReparacion (NumReparacion, Referencia, Unidades) VALUES
(1, 'ACEITE10W40', 1),
(1, 'FILTROAIRE', 1),
(2, 'PASTILLASFR', 2),
(3, 'NEUMATICO', 4),
(4, 'BUJIA', 4);