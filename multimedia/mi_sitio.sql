-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2024 a las 15:55:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mi_sitio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas1`
--

CREATE TABLE `facturas1` (
  `id` int(11) NOT NULL,
  `numeroFactura` int(11) NOT NULL,
  `fechaFactura` date NOT NULL,
  `nombreProveedor` varchar(255) NOT NULL,
  `direccionProveedor` varchar(255) NOT NULL,
  `tipoProducto` varchar(50) NOT NULL,
  `descripcionProducto` text NOT NULL,
  `cantidadProducto` int(11) NOT NULL,
  `precioUnidad` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `metodoPago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas1`
--

INSERT INTO `facturas1` (`id`, `numeroFactura`, `fechaFactura`, `nombreProveedor`, `direccionProveedor`, `tipoProducto`, `descripcionProducto`, `cantidadProducto`, `precioUnidad`, `subtotal`, `iva`, `total`, `metodoPago`) VALUES
(7, 1007, '2022-02-15', 'Proveedor G', 'Calle Principal 321', 'Electrónica', 'Smartphone', 5, 300.00, 1500.00, 300.00, 1800.00, 'Tarjeta de crédito'),
(8, 1008, '2022-02-20', 'Proveedor H', 'Avenida Central 456', 'Muebles', 'Sofá', 2, 600.00, 1200.00, 240.00, 1440.00, 'Efectivo'),
(9, 1009, '2022-02-25', 'Proveedor I', 'Calle de la Luna 789', 'Joyería', 'Anillo de oro', 1, 800.00, 800.00, 160.00, 960.00, 'Cheque'),
(10, 1010, '2022-03-01', 'Proveedor J', 'Avenida del Sol 123', 'Electrodoméstico', 'Lavadora', 3, 700.00, 2100.00, 420.00, 2520.00, 'Transferencia bancaria'),
(11, 1011, '2022-03-05', 'Proveedor K', 'Calle de las Flores 222', 'Ropa', 'Camisa', 4, 40.00, 160.00, 32.00, 192.00, 'Tarjeta de débito'),
(12, 1012, '2022-03-10', 'Proveedor L', 'Avenida de los Robles 555', 'Herramientas', 'Taladro', 2, 120.00, 240.00, 48.00, 288.00, 'Efectivo'),
(13, 1013, '2022-03-15', 'Proveedor M', 'Calle de las Palmeras 333', 'Electrónica', 'Tablet', 3, 200.00, 600.00, 120.00, 720.00, 'Cheque'),
(14, 1014, '2022-03-20', 'Proveedor N', 'Avenida de los Pinos 777', 'Juguetes', 'Muñeca', 1, 30.00, 30.00, 6.00, 36.00, 'Transferencia bancaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `fechaGasto` date NOT NULL,
  `descripcionGasto` text NOT NULL,
  `montoGasto` decimal(10,2) NOT NULL,
  `categoriaGasto` varchar(50) NOT NULL,
  `comprobanteGasto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `fechaGasto`, `descripcionGasto`, `montoGasto`, `categoriaGasto`, `comprobanteGasto`) VALUES
(1, '2022-03-01', 'Compra de material de oficina', 75.50, 'Suministros', NULL),
(2, '2022-03-02', 'Pago de la factura de electricidad', 120.00, 'Servicios', NULL),
(3, '2022-03-03', 'Almuerzo de negocios con cliente', 45.75, 'Entretenimiento', NULL),
(4, '2022-03-04', 'Compra de herramientas para mantenimiento', 200.25, 'Mantenimiento', NULL),
(5, '2022-03-05', 'Gasto en combustible para vehículos', 150.00, 'Transporte', NULL),
(6, '2022-03-06', 'Pago de membresía de gimnasio', 50.00, 'Salud', NULL),
(7, '2022-03-07', 'Cena de empresa con empleados', 90.30, 'Entretenimiento', NULL),
(8, '2022-03-08', 'Compra de ingredientes para cafetería', 35.80, 'Alimentación', NULL),
(9, '2022-03-09', 'Papelería para eventos corporativos', 60.45, 'Suministros', NULL),
(10, '2022-03-10', 'Reparación de equipo de oficina', 180.50, 'Mantenimiento', NULL),
(11, '2022-03-11', 'Gastos de envío de mercancía', 40.75, 'Logística', NULL),
(12, '2022-03-12', 'Pago de la factura de teléfono', 85.20, 'Servicios', NULL),
(13, '2022-03-13', 'Material de limpieza para la oficina', 25.60, 'Mantenimiento', NULL),
(14, '2022-03-14', 'Almuerzo de trabajo con proveedores', 65.35, 'Entretenimiento', NULL),
(15, '2022-03-15', 'Compra de software de gestión', 300.00, 'Tecnología', NULL),
(16, '2022-03-16', 'Gasto en publicidad online', 75.15, 'Marketing', NULL),
(17, '2022-03-17', 'Comida para reunión de equipo', 55.90, 'Alimentación', NULL),
(18, '2022-03-18', 'Transporte de material de producción', 120.75, 'Logística', NULL),
(19, '2022-03-19', 'Pago de licencia de software', 150.50, 'Tecnología', NULL),
(20, '2022-03-20', 'Compra de uniformes para empleados', 90.25, 'Recursos Humanos', NULL),
(21, '2022-03-21', 'Cena de celebración de logro empresarial', 110.80, 'Entretenimiento', NULL),
(22, '2022-03-22', 'Reparación de vehículo de la empresa', 250.00, 'Transporte', NULL),
(23, '2022-03-23', 'Material promocional para evento', 70.45, 'Marketing', NULL),
(24, '2022-03-24', 'Pago de cuotas de seguro', 95.60, 'Servicios', NULL),
(25, '2022-03-25', 'Gastos de representación en conferencia', 200.75, 'Entretenimiento', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fecha_llegada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `numero_habitacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id`, `nombre`, `apellido`, `fecha_llegada`, `fecha_salida`, `numero_habitacion`) VALUES
(1, 'Juan', 'Pérez', '2022-01-10', '2022-01-15', 101),
(2, 'Ana', 'González', '2022-02-05', '2022-02-10', 102),
(3, 'Pedro', 'Sánchez', '2022-03-20', '2022-03-25', 103),
(4, 'María', 'Martínez', '2022-04-15', '2022-04-20', 104),
(5, 'Luis', 'Rodríguez', '2022-05-12', '2022-05-17', 105),
(6, 'Eva', 'López', '2022-06-08', '2022-06-13', 106),
(7, 'Carlos', 'Fernández', '2022-07-25', '2022-07-30', 107),
(8, 'Laura', 'Hernández', '2022-08-18', '2022-08-23', 108),
(9, 'Javier', 'Gómez', '2022-09-02', '2022-09-07', 109),
(10, 'Sara', 'Romero', '2022-10-30', '2022-11-04', 110),
(11, 'Fernando', 'Díaz', '2022-11-15', '2022-11-20', 111),
(12, 'Marta', 'Ruiz', '2023-01-02', '2023-01-07', 112),
(13, 'Manuel', 'Jiménez', '2023-02-25', '2023-03-02', 113),
(14, 'Teresa', 'Lara', '2023-03-10', '2023-03-15', 114),
(15, 'Pablo', 'García', '2023-04-20', '2023-04-25', 115),
(16, 'Alejandra', 'Ortega', '2023-05-15', '2023-05-20', 116),
(17, 'Diego', 'Vargas', '2023-06-12', '2023-06-17', 117),
(18, 'Beatriz', 'Mendoza', '2023-07-08', '2023-07-13', 118),
(19, 'Ricardo', 'Navarro', '2023-08-30', '2023-09-04', 119),
(20, 'Isabel', 'Silva', '2023-09-25', '2023-09-30', 120),
(21, 'Germán', 'Cruz', '2023-10-10', '2023-10-15', 121),
(22, 'Paula', 'Reyes', '2023-11-18', '2023-11-23', 122),
(23, 'Gabriel', 'Luna', '2023-12-05', '2023-12-10', 123),
(24, 'Carolina', 'Ortiz', '2024-01-28', '2024-02-02', 124),
(25, 'Hugo', 'Vega', '2024-02-15', '2024-02-20', 125),
(26, 'Carmen', 'Molina', '2024-03-20', '2024-03-25', 126),
(27, 'Sergio', 'Aguirre', '2024-04-10', '2024-04-15', 127),
(28, 'Rosa', 'Juárez', '2024-05-02', '2024-05-07', 128),
(29, 'Lucas', 'Fuentes', '2024-06-18', '2024-06-23', 129),
(30, 'Julia', 'Gallardo', '2024-07-30', '2024-08-04', 130),
(31, 'Martín', 'Santos', '2024-08-25', '2024-08-30', 131),
(32, 'Verónica', 'Ochoa', '2024-09-12', '2024-09-17', 132),
(33, 'Emilio', 'Pacheco', '2024-10-15', '2024-10-20', 133),
(34, 'Clara', 'Delgado', '2024-11-20', '2024-11-25', 134),
(35, 'Ángel', 'Montes', '2024-12-08', '2024-12-13', 135),
(36, 'Valeria', 'Estévez', '2025-01-30', '2025-02-04', 136),
(37, 'Roberto', 'Soto', '2025-02-18', '2025-02-23', 137),
(38, 'Alicia', 'Cabrera', '2025-03-10', '2025-03-15', 138),
(39, 'Andrés', 'Cortés', '2025-04-25', '2025-04-30', 139),
(40, 'Norma', 'Vera', '2025-05-20', '2025-05-25', 140),
(41, 'Raúl', 'Gallardo', '2025-06-05', '2025-06-10', 141),
(42, 'Daniela', 'Cordero', '2025-07-15', '2025-07-20', 142),
(43, 'Sebastián', 'Valencia', '2025-08-28', '2025-09-02', 143),
(44, 'Liliana', 'Escobar', '2025-09-10', '2025-09-15', 144),
(45, 'Ramón', 'Paredes', '2025-10-18', '2025-10-23', 145),
(46, 'Marisol', 'Ríos', '2025-11-30', '2025-12-05', 146),
(47, 'Alberto', 'Aguilar', '2025-12-15', '2025-12-20', 147),
(48, 'Elsa', 'Domínguez', '2026-01-12', '2026-01-17', 148),
(49, 'Gabriela', 'Herrera', '2026-02-28', '2026-03-05', 149),
(50, 'Arturo', 'Maldonado', '2026-03-25', '2026-03-30', 150),
(51, 'Renata', 'Mora', '2026-04-20', '2026-04-25', 151),
(52, 'Esteban', 'Uribe', '2026-05-08', '2026-05-13', 152),
(53, 'Natalia', 'Zamora', '2026-06-30', '2026-07-05', 153),
(54, 'Agustín', 'Alvarado', '2026-07-18', '2026-07-23', 154),
(55, 'Lorena', 'Trujillo', '2026-08-10', '2026-08-15', 155),
(56, 'Ismael', 'Rocha', '2026-09-02', '2026-09-07', 156),
(57, 'Marina', 'Robles', '2026-10-28', '2026-11-02', 157),
(58, 'Santiago', 'Morales', '2026-11-15', '2026-11-20', 158),
(59, 'Aurora', 'Paz', '2026-12-02', '2026-12-07', 159),
(60, 'Maximiliano', 'Salazar', '2027-01-20', '2027-01-25', 160);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `producto`, `cantidad`, `precio`, `fecha`) VALUES
(13, 'Acondicionador', 20, 4.00, '2024-04-25'),
(14, 'Gel de ducha', 25, 4.00, '2024-04-25'),
(15, 'Loción corporal', 15, 5.00, '2024-04-25'),
(16, 'Pasta de dientes', 20, 2.00, '2024-04-25'),
(17, 'Cepillo de dientes', 30, 1.00, '2024-04-25'),
(18, 'Hilo dental', 20, 1.00, '2024-04-25'),
(19, 'Enjuague bucal', 15, 3.00, '2024-04-25'),
(20, 'Toallas de manos', 50, 5.00, '2024-04-25'),
(21, 'Toallas faciales', 30, 3.00, '2024-04-25'),
(22, 'Bastoncillos de algodón', 20, 1.00, '2024-04-25'),
(23, 'Discos de algodón', 20, 1.00, '2024-04-25'),
(24, 'Maquinilla de afeitar desechable', 20, 1.00, '2024-04-25'),
(25, 'Crema de afeitar', 15, 4.00, '2024-04-25'),
(26, 'Secador de pelo', 10, 20.00, '2024-04-25'),
(27, 'Plancha para ropa', 5, 30.00, '2024-04-25'),
(28, 'Tabla de planchar', 5, 15.00, '2024-04-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_hotel`
--

CREATE TABLE `personal_hotel` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_registro` date NOT NULL,
  `puesto_trabajo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal_hotel`
--

INSERT INTO `personal_hotel` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `fecha_registro`, `puesto_trabajo`) VALUES
(1, 'Carlos', 'González', '1990-04-15', '2021-10-01', 'Recepcionista'),
(2, 'Laura', 'Rodríguez', '1988-11-20', '2021-09-25', 'Camareo'),
(3, 'Elena', 'Sánchez', '1995-03-10', '2021-08-30', 'Limpieza'),
(4, 'Alejandro', 'Pérez', '1982-09-05', '2021-07-15', 'Cocinero'),
(5, 'María', 'López', '1993-06-12', '2021-10-05', 'Gerente'),
(6, 'Javier', 'Martínez', '1987-02-28', '2021-09-20', 'Mantenimiento'),
(7, 'Lucía', 'Fernández', '1991-12-18', '2021-08-10', 'Botones'),
(8, 'Daniel', 'Hernández', '1984-07-30', '2021-07-02', 'Seguridad'),
(9, 'Sofía', 'Gómez', '1994-10-24', '2021-10-08', 'Reservas'),
(10, 'Antonio', 'Romero', '1986-03-08', '2021-09-15', 'Barman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `numero_personas` int(11) DEFAULT NULL,
  `tipo_habitacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `nombre`, `apellidos`, `fecha_entrada`, `fecha_salida`, `numero_personas`, `tipo_habitacion`) VALUES
(1, 'Maira ', 'Quiñones Angulo ', '2024-05-24', '2024-05-23', 12, 'doble'),
(2, 'Maira ', 'Quiñones Angulo ', '2024-05-21', '2024-05-20', 12, 'doble'),
(3, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-13', 12, 'doble'),
(4, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-22', 12, 'individual'),
(5, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-28', 12, 'doble'),
(6, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-28', 12, 'doble'),
(7, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-28', 12, 'doble'),
(8, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-28', 12, 'doble'),
(9, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-28', 12, 'doble'),
(10, 'Maria Denis ', 'Quiñones Angulo ', '2024-05-24', '2024-05-13', 12, 'doble'),
(11, 'Maria Denis ', 'Quiñones Angulo ', '2024-05-24', '2024-05-13', 12, 'doble'),
(12, 'Maira ', 'Quiñones Angulo ', '2024-05-13', '2024-05-23', 12, 'doble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `correo`, `contrasena`) VALUES
(1, 'Maira Riasco', 'alexqa1q25@gmail.com', '$2y$10$iX4Fv4uZx1GvcNo7qRyOJOrwoWVBEQvs/hvc2/e2bDK1LhFilubkG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `tipoIngreso` varchar(50) NOT NULL,
  `montoIngreso` decimal(10,2) NOT NULL,
  `formaPago` varchar(50) NOT NULL,
  `metodoPago` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fechaIngreso`, `tipoIngreso`, `montoIngreso`, `formaPago`, `metodoPago`, `observaciones`) VALUES
(1, '2022-01-10', 'Venta de producto A', 100.50, 'Efectivo', NULL, 'Cliente satisfecho'),
(2, '2022-02-05', 'Venta de servicio B', 250.75, 'Tarjeta de crédito', 'Visa', 'Sin observaciones'),
(3, '2022-03-20', 'Venta de producto C', 75.00, 'Transferencia bancaria', NULL, 'Entrega programada para mañana'),
(4, '2022-04-15', 'Venta de producto D', 180.25, 'Efectivo', NULL, 'Requiere factura fiscal'),
(5, '2022-05-12', 'Venta de servicio E', 300.00, 'Cheque', 'Banco X', 'A cuenta del cliente'),
(6, '2022-06-08', 'Venta de producto F', 50.75, 'Efectivo', NULL, 'Cliente recurrente'),
(7, '2022-07-25', 'Venta de producto G', 120.00, 'Tarjeta de débito', 'Mastercard', 'Envío pendiente'),
(8, '2022-08-18', 'Venta de servicio H', 90.25, 'Efectivo', NULL, 'Confirmar dirección de entrega'),
(9, '2022-09-02', 'Venta de producto I', 200.50, 'Transferencia bancaria', NULL, 'Cliente VIP'),
(10, '2022-10-30', 'Venta de producto J', 150.75, 'Efectivo', NULL, 'Descuento aplicado'),
(11, '2022-11-15', 'Venta de servicio K', 80.00, 'Tarjeta de crédito', 'American Express', 'Pago parcial'),
(12, '2023-01-02', 'Venta de producto L', 95.25, 'Efectivo', NULL, 'Entrega inmediata'),
(13, '2023-02-25', 'Venta de servicio M', 120.50, 'Cheque', 'Banco Y', 'Pago a plazos'),
(14, '2023-03-10', 'Venta de producto N', 300.00, 'Efectivo', NULL, 'Inventario bajo'),
(15, '2023-04-20', 'Venta de producto O', 75.75, 'Tarjeta de débito', 'Visa', 'Promoción finalizada'),
(16, '2023-05-15', 'Venta de servicio P', 180.25, 'Efectivo', NULL, 'Cliente nuevo'),
(17, '2023-06-12', 'Venta de producto Q', 95.00, 'Transferencia bancaria', NULL, 'Urgente'),
(18, '2023-07-08', 'Venta de servicio R', 200.75, 'Efectivo', NULL, 'Requiere instalación'),
(19, '2023-08-30', 'Venta de producto S', 150.00, 'Tarjeta de crédito', 'Mastercard', 'Garantía extendida'),
(20, '2023-09-25', 'Venta de servicio T', 50.25, 'Efectivo', NULL, 'Pedido especial'),
(21, '2023-10-10', 'Venta de producto U', 220.50, 'Cheque', 'Banco Z', 'Entrega en zona rural'),
(22, '2023-11-18', 'Venta de producto V', 110.75, 'Efectivo', NULL, 'Descuento por volumen'),
(23, '2023-12-05', 'Venta de servicio W', 75.00, 'Tarjeta de débito', 'American Express', 'Cliente satisfecho'),
(24, '2024-01-28', 'Venta de producto X', 160.25, 'Efectivo', NULL, 'Cliente frecuente'),
(25, '2024-02-15', 'Venta de servicio Y', 90.00, 'Transferencia bancaria', NULL, 'Envío internacional'),
(26, '2024-03-20', 'Venta de producto Z', 130.75, 'Efectivo', NULL, 'Producto agotado'),
(27, '2024-04-10', 'Venta de producto AA', 300.00, 'Tarjeta de crédito', 'Visa', 'Cliente corporativo'),
(28, '2024-05-02', 'Venta de servicio BB', 40.25, 'Efectivo', NULL, 'Pedido en espera'),
(29, '2024-06-18', 'Venta de producto CC', 180.50, 'Cheque', 'Banco W', 'Promoción vigente'),
(30, '2024-07-30', 'Venta de producto DD', 70.75, 'Efectivo', NULL, 'Envío gratuito'),
(31, '2024-08-25', 'Venta de servicio EE', 250.00, 'Tarjeta de débito', 'Mastercard', 'Sin observaciones'),
(32, '2024-09-12', 'Venta de producto FF', 120.25, 'Efectivo', NULL, 'Producto personalizado'),
(33, '2024-10-15', 'Venta de producto GG', 100.00, 'Transferencia bancaria', NULL, 'Promoción especial'),
(34, '2024-11-20', 'Venta de servicio HH', 300.75, 'Efectivo', NULL, 'Cliente recomendado'),
(35, '2024-12-08', 'Venta de producto II', 65.00, 'Tarjeta de crédito', 'American Express', 'Pedido pendiente'),
(36, '2025-01-30', 'Venta de producto JJ', 140.25, 'Efectivo', NULL, 'Producto en oferta'),
(37, '2025-02-18', 'Venta de servicio KK', 80.50, 'Cheque', 'Banco X', 'Cliente frecuente'),
(38, '2025-03-10', 'Venta de producto LL', 200.75, 'Efectivo', NULL, 'Próxima entrega programada'),
(39, '2025-04-25', 'Venta de producto MM', 45.75, 'Tarjeta de débito', 'Visa', 'Cliente satisfecho'),
(40, '2025-05-20', 'Venta de servicio NN', 175.00, 'Efectivo', NULL, 'Descuento por pronto pago'),
(41, '2025-06-05', 'Venta de producto OO', 60.25, 'Transferencia bancaria', NULL, 'Envío express'),
(42, '2025-07-15', 'Venta de producto PP', 250.50, 'Efectivo', NULL, 'Producto premium'),
(43, '2025-08-28', 'Venta de servicio QQ', 110.75, 'Tarjeta de crédito', 'Mastercard', 'Obsequio incluido'),
(44, '2025-09-10', 'Venta de producto RR', 85.00, 'Efectivo', NULL, 'Cliente VIP'),
(45, '2025-10-18', 'Venta de servicio SS', 190.25, 'Cheque', 'Banco Y', 'Garantía extendida'),
(46, '2025-11-30', 'Venta de producto TT', 120.00, 'Efectivo', NULL, 'Producto en promoción'),
(47, '2025-12-15', 'Venta de producto UU', 70.75, 'Tarjeta de débito', 'American Express', 'Cliente satisfecho'),
(48, '2026-01-12', 'Venta de servicio VV', 300.00, 'Efectivo', NULL, 'Entrega programada para hoy'),
(49, '2026-02-28', 'Venta de producto WW', 55.25, 'Transferencia bancaria', NULL, 'Cliente recurrente'),
(50, '2026-03-25', 'Venta de producto XX', 160.50, 'Efectivo', NULL, 'Sin observaciones'),
(51, '2026-04-20', 'Venta de servicio YY', 70.75, 'Tarjeta de crédito', 'Visa', 'Pago pendiente'),
(52, '2026-05-08', 'Venta de producto ZZ', 225.00, 'Efectivo', NULL, 'Urgente'),
(53, '2026-06-30', 'Venta de servicio AAA', 95.25, 'Cheque', 'Banco Z', 'Requiere factura'),
(54, '2026-07-18', 'Venta de producto BBB', 130.50, 'Efectivo', NULL, 'Descuento aplicado'),
(55, '2026-08-10', 'Venta de servicio CCC', 50.75, 'Tarjeta de débito', 'Mastercard', 'Cliente nuevo'),
(56, '2026-09-02', 'Venta de producto DDD', 180.00, 'Efectivo', NULL, 'Pedido en espera'),
(57, '2026-10-28', 'Venta de producto EEE', 90.25, 'Transferencia bancaria', NULL, 'Envío internacional'),
(58, '2026-11-15', 'Venta de servicio FFF', 250.50, 'Efectivo', NULL, 'Cliente corporativo'),
(59, '2026-12-02', 'Venta de producto GGG', 40.75, 'Tarjeta de crédito', 'American Express', 'Producto personalizado'),
(60, '2027-01-20', 'Venta de servicio HHH', 300.00, 'Efectivo', NULL, 'Promoción vigente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facturas1`
--
ALTER TABLE `facturas1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_hotel`
--
ALTER TABLE `personal_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facturas1`
--
ALTER TABLE `facturas1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `personal_hotel`
--
ALTER TABLE `personal_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
