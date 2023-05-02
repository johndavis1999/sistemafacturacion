-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2023 a las 19:13:40
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_dsn08`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenteservicio`
--

CREATE TABLE `agenteservicio` (
  `idAgenteServicio` int(11) NOT NULL,
  `idSupervisor` int(11) DEFAULT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Email` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `agenteservicio`
--

INSERT INTO `agenteservicio` (`idAgenteServicio`, `idSupervisor`, `Nombre`, `Apellido`, `Email`) VALUES
(22, 33, 'Carlos', 'Méndez', 'carlosmendez@gmail.coom'),
(23, 34, 'Pedro', 'Romero', 'pedroromero@outlook.com'),
(25, 35, 'Jerry', 'Silva', 'jerrysilva2@hotmail.com'),
(26, 36, 'Mónica', 'Villanueva', 'monicavillanueva@gmail.com'),
(36, 1, 'Enmy', 'Diveana', 'enmy@correo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente_cobranza`
--

CREATE TABLE `asistente_cobranza` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correoelectronico` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `identificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistente_cobranza`
--

INSERT INTO `asistente_cobranza` (`id`, `nombre`, `apellido`, `correoelectronico`, `telefono`, `identificacion`) VALUES
(1, 'Dominik', 'Torero', 'correo@correo.com', '1234567895', 923896591),
(2, 'Andres', 'Garcia', 'correo2@correo.com', '0945678912', 923654789),
(3, 'Karla', 'Sanchez', 'correo3@correo.com', '0912345678', 909876543),
(4, 'Maria', 'Gonzalez', 'correo4@correo.com', '0909898989', 901234567),
(5, 'Pedro', 'Lopez', 'correo5@correo.com', '0901122334', 909876543),
(6, 'Laura', 'Villagomez', 'correo6@correo.com', '0934567890', 907654321),
(7, 'Jose', 'Molina', 'correo7@correo.com', '0921345678', 909876543),
(8, 'Rocio', 'Santos', 'correo8@correo.com', '0921456789', 923567890),
(9, 'Jorge', 'Vallejo', 'correo9@correo.com', '0945678901', 923456789),
(10, 'Carla', 'Torres', 'correo10@correo.com', '0909898989', 912345678),
(11, 'Laura', 'Valencia', 'laurav@gmail.com', '0923456789', 912345678),
(12, 'Jorge', 'Rivas', 'jorgerivas@hotmail.com', '0912345678', 923456789),
(13, 'Angie', 'García', 'angiegarcia@gmail.com', '0923456789', 912345678),
(14, 'Sebastián', 'Mendoza', 'sebastianm@hotmail.com', '0912345678', 923456789),
(15, 'Sofía', 'Rodríguez', 'sofiarodriguez@yahoo.com', '0923456789', 912345678),
(16, 'David', 'Hernández', 'davidhernandez@gmail.com', '0912345678', 923456789),
(17, 'Isabella', 'Martínez', 'isabellamartinez@hotmail.com', '0923456789', 912345678),
(18, 'Luis', 'Castillo', 'luiscastillo@gmail.com', '0912345678', 923456789),
(19, 'Valeria', 'Vargas', 'valeriavargas@yahoo.com', '0923456789', 912345678),
(20, 'Carlos', 'Ramírez', 'carlosramirez@hotmail.com', '0912345678', 923456789),
(21, 'Florencia', 'Vega', 'florencia.vega@gmail.com', '0987654321', 903344466),
(22, 'Juan', 'López', 'juan.lopez@hotmail.com', '0976543210', 956789012),
(23, 'Camila', 'Herrera', 'camila.herrera@yahoo.com', '0932109876', 923456789),
(24, 'Lucas', 'García', 'lucas.garcia@gmail.com', '0998765432', 901122334),
(25, 'Sofía', 'Díaz', 'sofia.diaz@hotmail.com', '0976543210', 923456789),
(26, 'Diego', 'Pérez', 'diego.perez@yahoo.com', '0932109876', 903344466),
(27, 'Julieta', 'Romero', 'julieta.romero@gmail.com', '0987654321', 956789012),
(28, 'Lautaro', 'Martínez', 'lautaro.martinez@hotmail.com', '0998765432', 901122334),
(29, 'Valentina', 'González', 'valentina.gonzalez@yahoo.com', '0932109876', 903344466),
(30, 'Miguel', 'Silva', 'miguel.silva@gmail.com', '0976543210', 956789012);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`id`, `nombre`, `direccion`, `estado`) VALUES
(1, 'Bodega Guasmo', 'Guayaquil guasmo sur', 1),
(2, 'Bodega Centro', 'Parque centenario', 0),
(1, 'Bodega Guasmo', 'Guayaquil guasmo sur', 1),
(2, 'Bodega Centro', 'Parque centenario', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

CREATE TABLE `cajero` (
  `id_cajero` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `codigo_jefe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cajero`
--

INSERT INTO `cajero` (`id_cajero`, `nombres`, `telefono`, `codigo_jefe`) VALUES
(1, 'Alexander Romanov', '1234567890', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `telefono`, `correo`, `direccion`, `estado`) VALUES
(1, 'Carlos', 'Perez', '0912345678', 'carlospesantes@gmai.com', 'portete', 1),
(2, 'Juanito', 'Piguave', '1234567895', 'correo@correo.com', 'guayaquil pedro carbo y 10 de agosto', 1),
(3, 'Carlos', 'Mendez', '0987654321', 'carlos.mendez@gmail.com', 'Quito, Calle 10 de Agosto y 9 de Octubre', 1),
(4, 'Maria', 'Lopez', '0998765432', 'maria.lopez@hotmail.com', 'Guayaquil, Av. Las Aguas y Los Rios', 1),
(5, 'Pedro', 'Garcia', '0976543210', 'pedro.garcia@yahoo.com', 'Cuenca, Calle Juan Montalvo y Luis Cordero', 1),
(6, 'Ana', 'Fernandez', '0932546789', 'ana.fernandez@gmail.com', 'Manta, Av. 24 de Mayo y 13 de Junio', 1),
(7, 'Luis', 'Perez', '0987456321', 'luis.perez@hotmail.com', 'Portoviejo, Calle Olmedo y Sucre', 1),
(8, 'Sofia', 'Gutierrez', '0998765432', 'sofia.gutierrez@yahoo.com', 'Loja, Av. 24 de Mayo y 10 de Agosto', 1),
(9, 'Andres', 'Ramirez', '0976543210', 'andres.ramirez@gmail.com', 'Ambato, Calle Bolivar y Juan Montalvo', 1),
(10, 'Gabriela', 'Velasquez', '0932546789', 'gabriela.velasquez@hotmail.com', 'Esmeraldas, Av. Los Almendros y Los Pinos', 1),
(11, 'Juan', 'Morales', '0987456321', 'juan.morales@yahoo.com', 'Guaranda, Calle 5 de Junio y 24 de Mayo', 1),
(12, 'Luisa', 'Garcia', '0998765432', 'luisa.garcia@gmail.com', 'Santo Domingo, Av. 29 de Mayo y 9 de Octubre', 1),
(13, 'Eduardo', 'Vallejo', '0987654321', 'eduardo.vallejo@gmail.com', 'Quito, Av. Amazonas y Naciones Unidas', 1),
(14, 'Marta', 'Guzman', '0998765432', 'marta.guzman@hotmail.com', 'Guayaquil, Calle Alejo Lascano y Velez', 1),
(15, 'Javier', 'Martinez', '0976543210', 'javier.martinez@yahoo.com', 'Cuenca, Av. Loja y Huayna Capac', 1),
(16, 'Lucia', 'Sanchez', '0932546789', 'lucia.sanchez@gmail.com', 'Manta, Calle 24 de Mayo y Av. 4 de Noviembre', 1),
(17, 'Roberto', 'Diaz', '0987456321', 'roberto.diaz@hotmail.com', 'Portoviejo, Av. 13 de Junio y Olmedo', 1),
(18, 'Camila', 'Gomez', '0998765432', 'camila.gomez@yahoo.com', 'Loja, Calle Bolivar y 18 de Noviembre', 1),
(19, 'Jorge', 'Rodriguez', '0976543210', 'jorge.rodriguez@gmail.com', 'Ambato, Av. Cevallos y Sucre', 1),
(20, 'Fernanda', 'Garcia', '0932546789', 'fernanda.garcia@hotmail.com', 'Esmeraldas, Calle 10 de Agosto y Av. Esmeraldas', 1),
(21, 'Patricio', 'Ortiz', '0987456321', 'patricio.ortiz@yahoo.com', 'Guaranda, Av. 24 de Mayo y Olmedo', 1),
(22, 'Laura', 'Moreno', '0998765432', 'laura.moreno@gmail.com', 'Santo Domingo, Calle 5 de Junio y Av. Quito', 1),
(23, 'Diego', 'Gomez', '0976543210', 'diego.gomez@hotmail.com', 'Quito, Av. Eloy Alfaro y La Coruna', 1),
(24, 'Sara', 'Perez', '0932546789', 'sara.perez@yahoo.com', 'Guayaquil, Calle Malecon y Av. 9 de Octubre', 1),
(25, 'Johana', 'Lopez', '0987456321', 'johana.lopez@gmail.com', 'Cuenca, Calle Larga y Av. Huayna Capac', 1),
(26, 'Manuel', 'Velez', '0998765432', 'manuel.velez@hotmail.com', 'Manta, Av. 24 de Mayo y Av. 7 de Agosto', 1),
(27, 'Marcela', 'Gonzalez', '0976543210', 'marcela.gonzalez@gmail.com', 'Portoviejo, Av. 13 de Junio y Av. Reales Tamarindos', 1),
(28, 'Ana', 'Flores', '0987654321', 'ana.flores@gmail.com', 'Quito, Calle Wilson E10-12 y Reina Victoria', 1),
(29, 'Pedro', 'Vega', '0998765432', 'pedro.vega@hotmail.com', 'Guayaquil, Av. Francisco de Orellana y Av. Juan Tanca Marengo', 1),
(30, 'Isabel', 'García', '0976543210', 'isabel.garcia@yahoo.com', 'Cuenca, Av. 12 de Abril y Av. Solano', 1),
(31, 'Luis', 'Hernández', '0932546789', 'luis.hernandez@gmail.com', 'Manta, Av. 24 de Mayo y Calle 15', 1),
(32, 'María', 'Carrasco', '0987456321', 'maria.carrasco@yahoo.com', 'Portoviejo, Av. Metropolitana y Av. Reales Tamarindos', 1),
(33, 'Carlos', 'Martínez', '0998765432', 'carlos.martinez@hotmail.com', 'Loja, Av. Isidro Ayora y Av. Manuel Agustín Aguirre', 1),
(34, 'Julieta', 'Sánchez', '0976543210', 'julieta.sanchez@gmail.com', 'Ambato, Av. Cevallos y Av. Bolívar', 1),
(35, 'Mario', 'Lara', '0932546789', 'mario.lara@hotmail.com', 'Esmeraldas, Av. 15 de Agosto y Av. Juan de Dios Martínez', 1),
(36, 'Paola', 'Romero', '0987456321', 'paola.romero@yahoo.com', 'Guaranda, Calle Sucre y Av. 9 de Octubre', 1),
(37, 'Gustavo', 'Paredes', '0998765432', 'gustavo.paredes@gmail.com', 'Santo Domingo, Av. Tsáchila y Av. Lauro Guerrero', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenio`
--

CREATE TABLE `convenio` (
  `id_convenio` int(11) NOT NULL,
  `id_asesor` int(11) NOT NULL,
  `num_fact` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `total` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `cuotas` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `convenio`
--

INSERT INTO `convenio` (`id_convenio`, `id_asesor`, `num_fact`, `id_cliente`, `total`, `fecha`, `cuotas`, `estado`) VALUES
(1, 8, 33, 5, 298664, '0000-00-00 00:00:00', 2, 0),
(2, 8, 33, 1, 298664, '2023-04-02 05:41:07', 3, 0),
(3, 3, 32, 1, 0, '2023-04-02 05:42:56', 3, 0),
(4, 3, 32, 1, 0, '2023-04-02 05:44:30', 7, 0),
(5, 1, 3, 32, 0, '2023-04-02 05:45:15', 6, 0),
(6, 1, 32, 3, 0, '2023-04-02 05:45:40', 5, 0),
(7, 1, 33, 8, 298664, '2023-04-02 05:45:59', 888, 0),
(8, 8, 33, 1, 2, '2023-04-02 05:47:32', 298664, 0),
(9, 8, 33, 1, 3, '2023-04-02 05:48:08', 298664, 0),
(10, 8, 33, 1, 22, '2023-04-02 05:54:50', 298664, 0),
(11, 8, 33, 1, 1, '2023-04-02 05:55:35', 298664, 0),
(12, 8, 33, 1, 2, '2023-04-02 05:55:44', 298664, 0),
(13, 8, 33, 1, 2, '2023-04-02 05:55:53', 298664, 0),
(14, 8, 33, 1, 2, '2023-04-02 05:58:01', 298664, 0),
(15, 8, 33, 1, 22, '2023-04-02 05:58:18', 298664, 0),
(16, 8, 33, 1, 2, '2023-04-02 06:00:54', 298664, 0),
(17, 8, 33, 1, 0, '2023-04-02 06:00:59', 298664, 0),
(18, 8, 33, 1, 2, '2023-04-02 06:07:07', 298664, 0),
(19, 8, 33, 1, 2, '2023-04-02 06:10:47', 0, 0),
(20, 8, 33, 1, 2, '2023-04-02 06:10:55', 0, 0),
(21, 8, 33, 1, 2, '2023-04-02 06:11:08', 0, 0),
(22, 8, 33, 1, 2, '2023-04-02 06:11:28', 0, 0),
(23, 8, 33, 1, 2, '2023-04-02 06:14:06', 298664, 0),
(24, 8, 33, 1, 2, '2023-04-02 06:14:11', 298664, 0),
(25, 8, 33, 1, 2, '2023-04-02 06:14:43', 298664, 0),
(26, 8, 33, 1, 3, '2023-04-02 06:19:01', 298664, 0),
(27, 8, 33, 1, 3, '2023-04-02 06:20:12', 298664, 0),
(28, 8, 33, 1, 2, '2023-04-02 06:24:54', 298664, 0),
(29, 8, 33, 1, 2, '2023-04-02 06:25:07', 298664, 0),
(30, 8, 33, 1, 2, '2023-04-02 06:25:16', 298664, 0),
(31, 8, 33, 1, 3, '2023-04-02 06:25:55', 298664, 0),
(32, 8, 33, 1, 3, '2023-04-02 06:26:24', 298664, 0),
(33, 8, 33, 1, 2, '2023-04-02 06:27:47', 298664, 0),
(34, 8, 33, 1, 2, '2023-04-02 06:28:00', 298664, 0),
(35, 8, 33, 1, 2, '2023-04-02 06:28:08', 298664, 0),
(36, 8, 33, 1, 3, '2023-04-02 06:29:51', 298664, 100),
(37, 8, 33, 1, 2, '2023-04-02 06:34:03', 298664, 0),
(38, 8, 33, 1, 2, '2023-04-02 06:34:53', 298664, 0),
(39, 8, 33, 1, 3, '2023-04-02 06:35:09', 298664, 100),
(40, 1, 8, 33, 298664, '2023-04-05 21:14:37', 2, 0),
(41, 1, 8, 33, 298664, '2023-04-05 21:23:16', 2, 0),
(42, 1, 8, 33, 298664, '2023-04-05 21:25:38', 2, 0),
(81, 1, 8, 33, 298664, '2023-04-05 21:27:04', 2, 0),
(82, 1, 8, 33, 298664, '2023-04-05 21:30:39', 2, 0),
(83, 1, 8, 33, 298664, '2023-04-05 21:46:50', 3, 0),
(134, 1, 48, 7, 27995.5, '2023-04-06 15:06:51', 3, 0),
(135, 1, 48, 7, 27995.5, '2023-04-06 15:11:57', 2, 0),
(136, 1, 48, 7, 27995.5, '2023-04-06 15:36:50', 2, 0),
(137, 1, 47, 15, 2352, '2023-04-06 16:08:39', 6, 0),
(138, 1, 45, 6, 392, '2023-04-06 17:22:17', 3, 0),
(139, 1, 45, 6, 392, '2023-04-06 17:26:12', 3, 100),
(140, 1, 45, 6, 392, '2023-04-06 17:26:17', 3, 0),
(141, 1, 45, 6, 392, '2023-04-06 17:26:26', 3, 0),
(142, 1, 45, 6, 392, '2023-04-06 17:26:32', 3, 0),
(143, 1, 45, 6, 392, '2023-04-06 17:32:13', 3, 100),
(144, 1, 45, 6, 392, '2023-04-06 17:32:23', 3, 100),
(145, 1, 45, 6, 392, '2023-04-06 17:32:26', 3, 0),
(146, 1, 45, 6, 392, '2023-04-06 17:35:56', 3, 100),
(147, 1, 45, 6, 392, '2023-04-06 17:36:39', 3, 100),
(148, 1, 45, 6, 392, '2023-04-06 17:37:56', 3, 100),
(149, 1, 45, 6, 392, '2023-04-06 17:39:41', 5, 100),
(150, 1, 45, 6, 392, '2023-04-06 17:40:02', 3, 100),
(151, 1, 45, 6, 392, '2023-04-07 05:50:48', 2, 0),
(152, 1, 45, 6, 392, '2023-04-07 06:04:21', 3, 0),
(153, 1, 45, 6, 392, '2023-04-07 06:16:40', 3, 0),
(154, 1, 45, 6, 392, '2023-04-07 06:25:11', 3, 3),
(155, 1, 45, 6, 392, '2023-04-07 06:29:43', 3, 4),
(156, 1, 45, 6, 392, '2023-04-07 06:29:50', 3, 1),
(0, 1, 45, 6, 392, '2023-04-29 20:35:01', 3, 2),
(0, 1, 45, 6, 392, '2023-04-29 20:35:40', 3, 1),
(0, 1, 45, 6, 392, '2023-04-29 20:35:48', 3, 1),
(0, 1, 45, 6, 392, '2023-04-29 20:36:06', 3, 1),
(0, 1, 45, 6, 392, '2023-04-29 20:36:11', 3, 1),
(0, 1, 45, 6, 392, '2023-04-29 20:36:23', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `cotizacion_id` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `garantia` tinyint(1) NOT NULL,
  `valor` float NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` int(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`cotizacion_id`, `idproveedor`, `idPedido`, `garantia`, `valor`, `fecha_hora`, `estado`, `descripcion`) VALUES
(1, 11, 1, 1, 5000, '2023-04-09 02:56:05', 1, 'Promocion + envio incluidos en el precio'),
(9, 25, 1, 0, 2000, '2023-04-09 03:07:03', 1, 'proveedor no da garantia'),
(10, 28, 1, 1, 3000, '2023-04-09 03:07:39', 111, 'proveedor ofrece de enganche 5 monitores adicionales con descuento'),
(11, 3, 2, 1, 5000, '2023-04-09 03:12:18', 1, 'Proveedor ofrece garantia y entrega gratis despues de 1 semana'),
(12, 8, 2, 0, 4000, '2023-04-09 03:13:13', 1, 'proveedor no da garantia pero ofrece entrega inmediata, no tiene todos los productoss solicitados'),
(49, 17, 7, 1, 123, '2023-04-02 16:42:28', 1, 'sadasdsa'),
(52, 6, 18, 1, 23123, '2023-04-04 05:56:18', 4, '1231'),
(53, 9, 9, 0, 9797, '2023-04-05 00:35:06', 1, '7878897'),
(54, 6, 19, 0, 7.2, '2023-04-05 00:46:28', 1, 'kubkj'),
(55, 4, 19, 1, 76678, '2023-04-05 00:52:27', 2, 'jkbkj'),
(56, 5, 18, 1, 2.2, '2023-04-05 02:08:36', 3, 'nnjnk'),
(57, 5, 19, 1, 8.9, '2023-04-05 02:09:25', 3, 'vhbhj <'),
(58, 3, 16, 1, 7897, '2023-04-05 02:12:15', 3, '8778'),
(59, 3, 16, 1, 79798, '2023-04-05 02:12:56', 3, '8778'),
(60, 4, 15, 1, 852, '2023-04-05 02:33:05', 1, '>'),
(61, 4, 17, 0, 8, '2023-04-05 02:37:47', 3, 'vjhbn hvjhvhj'),
(62, 5, 19, 0, 43242.2, '2023-04-05 03:14:06', 1, '123213'),
(65, 6, 7, 0, 85.6, '2023-04-05 23:00:51', 2, 'hjjhvjfchujcjgcjcgcxjgfxjghfxfgxghfxgfhxgfxgfgfxhgfxgfxhfgxhgfxgfxhffghxhfxgfxgxgfxfgxgfxfxfgfxgfgxfgxfghjjhvjfchujcjgcjcgcxjgfxjghfxfgxghfxgfhxgfxgfgfxhgfxgfxhfgxhgfxgfxhffghxhfxgfxgxgfxfgxgfxfxfgfxgfgxfgxfghjjhvjfchujcjgcjcgcxjgfxjghfxfgxghfxgfhxgfxgfgf'),
(67, 13, 10, 1, 680, '2023-04-06 00:03:00', 1, 'precio promocional hasta el lunes'),
(68, 14, 10, 0, 1000, '2023-04-06 00:04:06', 1, 'precio promocial hasta el sabado'),
(69, 3, 0, 0, 222, '2023-04-09 01:48:50', 1, '2'),
(70, 32, 0, 0, 2.22222e22, '2023-04-09 01:49:58', 4, 'prueba'),
(71, 6, 5, 0, 222222000000, '2023-04-09 01:50:54', 3, 'prueba pedido'),
(72, 9, 5, 1, 8888, '2023-04-09 02:04:58', 1, 'prueba'),
(73, 8, 5, 1, 2222, '2023-04-09 02:07:28', 4, 'prueba productos'),
(74, 14, 7, 1, 456, '2023-04-09 02:09:15', 1, 'prueba nuevo pedido'),
(75, 3, 5, 1, 1221, '2023-04-09 02:16:31', 1, '123123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuotas_convenio`
--

CREATE TABLE `cuotas_convenio` (
  `id_convenio` int(11) NOT NULL,
  `num_cuota_convenio` int(11) NOT NULL,
  `valor_pagado` float NOT NULL,
  `valor_cuota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuotas_convenio`
--

INSERT INTO `cuotas_convenio` (`id_convenio`, `num_cuota_convenio`, `valor_pagado`, `valor_cuota`) VALUES
(42, 1, 3, 149332),
(42, 2, 3, 149332),
(0, 1, 0, 149332),
(0, 2, 0, 149332),
(0, 1, 2147480000, 149332),
(0, 2, 0, 149332),
(0, 1, 0, 149332),
(0, 2, 0, 149332),
(81, 1, 149732, 149332),
(81, 2, 0, 149332),
(82, 1, 149332, 149332),
(82, 2, 0, 149332),
(83, 1, 0, 99555),
(83, 2, 0, 99555),
(83, 3, 0, 99555),
(0, 1, 333, 13998),
(0, 2, 333, 13998),
(134, 1, 0, 9332),
(134, 2, 0, 9332),
(134, 3, 0, 9332),
(135, 1, 0, 13998),
(135, 2, 0, 13998),
(136, 1, 0, 13998),
(136, 2, 0, 13998),
(137, 1, 392, 392),
(137, 2, 392, 392),
(137, 3, 392, 392),
(137, 4, 100, 392),
(137, 5, 0, 392),
(137, 6, 0, 392),
(138, 1, 2, 131),
(138, 2, 2, 131),
(138, 3, 2, 131),
(139, 1, 2, 131),
(139, 2, 2, 131),
(139, 3, 2, 131),
(140, 1, 100, 131),
(140, 2, 2, 131),
(140, 3, 2, 131),
(141, 1, 222, 131),
(141, 2, 2, 131),
(141, 3, 2, 131),
(142, 1, 222, 131),
(142, 2, 2, 131),
(142, 3, 2, 131),
(143, 1, 100, 131),
(143, 2, 50, 131),
(143, 3, 10, 131),
(144, 1, 100, 131),
(144, 2, 50, 131),
(144, 3, 10, 131),
(145, 1, 100, 131),
(145, 2, 50, 131),
(145, 3, 10, 131),
(146, 1, 100, 131),
(146, 2, 50, 131),
(146, 3, 10, 131),
(147, 1, 100, 131),
(147, 2, 50, 131),
(147, 3, 10, 131),
(148, 1, 100.2, 131),
(148, 2, 50, 131),
(148, 3, 10, 131),
(149, 1, 22, 78.4),
(149, 2, 33, 78.4),
(149, 3, 33, 78.4),
(149, 4, 44, 78.4),
(149, 5, 55, 78.4),
(150, 1, 2.3, 130.67),
(150, 2, 4.5, 130.67),
(150, 3, 0, 130.67),
(151, 1, 196, 196),
(151, 2, 0, 196),
(152, 1, 130.67, 130.67),
(152, 2, 0, 130.67),
(152, 3, 0, 130.67),
(153, 1, 130.67, 130.67),
(153, 2, 130.67, 130.67),
(153, 3, 0, 130.67),
(154, 1, 130.67, 130.67),
(154, 2, 130.67, 130.67),
(154, 3, 0, 130.67),
(155, 1, 130.67, 130.67),
(155, 2, 130.67, 130.67),
(155, 3, 0, 130.67),
(156, 1, 130.67, 130.67),
(156, 2, 130.67, 130.67),
(156, 3, 0, 130.67),
(0, 1, 130.67, 130.67),
(0, 2, 0, 130.67),
(0, 3, 0, 130.67),
(0, 1, 130.67, 130.67),
(0, 2, 130.67, 130.67),
(0, 3, 130.67, 130.67),
(0, 1, 130.67, 130.67),
(0, 2, 130.67, 130.67),
(0, 3, 130.67, 130.67),
(0, 1, 130.67, 130.67),
(0, 2, 130.67, 130.67),
(0, 3, 130.67, 130.67),
(0, 1, 1, 130.67),
(0, 2, 1, 130.67),
(0, 3, 1, 130.67),
(0, 1, 0, 130.67),
(0, 2, 0, 130.67),
(0, 3, 0, 130.67);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion_item`
--

CREATE TABLE `detalle_cotizacion_item` (
  `cotizacion_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cotizacion_producto_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_cotizacion_item`
--

INSERT INTO `detalle_cotizacion_item` (`cotizacion_id`, `producto_id`, `cotizacion_producto_cantidad`) VALUES
(1, 4, 200),
(5, 21, 22),
(8, 5, 20),
(8, 11, 3),
(8, 26, 1),
(8, 19, 4),
(8, 23, 2),
(9, 5, 20),
(9, 11, 3),
(9, 26, 1),
(9, 19, 4),
(9, 23, 2),
(10, 5, 25),
(10, 11, 3),
(10, 26, 1),
(10, 19, 4),
(10, 23, 2),
(12, 33, 5),
(12, 34, 20),
(12, 29, 8),
(11, 10, 4),
(11, 33, 5),
(11, 34, 40),
(11, 29, 8),
(52, 27, 4),
(52, 23, 3333),
(54, 27, 8),
(55, 27, 0),
(56, 28, 3),
(57, 24, 9),
(60, 27, 88),
(61, 29, 2),
(49, 47, 222222),
(49, 49, 111111111),
(65, 26, 1231),
(67, 27, 8),
(67, 11, 2),
(68, 27, 8),
(68, 11, 2),
(52, 27, 4),
(52, 23, 3333),
(54, 27, 8),
(55, 27, 0),
(56, 28, 3),
(57, 24, 9),
(60, 27, 88),
(61, 29, 2),
(49, 47, 222222),
(49, 49, 111111111),
(63, 27, 2132),
(63, 27, 222),
(69, 24, 33),
(70, 26, 222),
(71, 29, 3),
(73, 3, 22222),
(73, 4, 45645),
(73, 8, 345),
(73, 9, 3455),
(73, 21, 34534),
(74, 14, 12312),
(74, 17, 12323),
(75, 4, 2222),
(75, 8, 3333),
(75, 9, 9999),
(75, 4, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_egreso`
--

CREATE TABLE `detalle_egreso` (
  `id_recibo_egreso` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_egreso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_egreso`
--

INSERT INTO `detalle_egreso` (`id_recibo_egreso`, `id_producto`, `cantidad_egreso`) VALUES
(1, 10, 70),
(1, 3, 400),
(1, 4, 100),
(2, 26, 2),
(2, 4, 100),
(2, 3, 300),
(3, 3, 200),
(3, 4, 100),
(0, 11, 1),
(2, 22, 1),
(3, 21, 25),
(0, 22, 5),
(2, 29, 5),
(3, 8, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura_item`
--

CREATE TABLE `detalle_factura_item` (
  `factura_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `factura_producto_cantidad` int(11) NOT NULL,
  `precio_unitario` float NOT NULL,
  `monto_final_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura_item`
--

INSERT INTO `detalle_factura_item` (`factura_id`, `producto_id`, `factura_producto_cantidad`, `precio_unitario`, `monto_final_item`) VALUES
(15, 20, 12, 22, 264),
(15, 20, 12, 33, 396),
(30, 15, 22, 11, 242),
(32, 18, 45, 2, 0),
(33, 20, 12, 22222, 266664),
(34, 9, 500, 800, 2000000),
(0, 20, 87978, 852, 74957300),
(15, 20, 12, 22, 264),
(15, 20, 12, 33, 396),
(30, 15, 22, 11, 242),
(32, 18, 45, 2, 0),
(33, 20, 12, 22222, 266664),
(34, 9, 500, 800, 2000000),
(0, 20, 87978, 852, 74957300),
(45, 20, 5, 70, 350),
(46, 15, 5, 0, 0),
(15, 20, 12, 22, 264),
(15, 20, 12, 33, 396),
(30, 15, 22, 11, 242),
(32, 18, 45, 2, 0),
(33, 20, 12, 22222, 266664),
(34, 9, 500, 800, 2000000),
(0, 20, 87978, 852, 74957300),
(15, 20, 12, 22, 264),
(15, 20, 12, 33, 396),
(30, 15, 22, 11, 242),
(32, 18, 45, 2, 0),
(33, 20, 12, 22222, 266664),
(34, 9, 500, 800, 2000000),
(0, 20, 87978, 852, 74957300),
(45, 20, 5, 70, 350),
(46, 15, 5, 0, 0),
(51, 1, 2, 20, 40),
(51, 34, 10, 30, 300),
(52, 7, 2000, 50, 100000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `id_recibo_ingreso` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_ingreso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`id_recibo_ingreso`, `id_producto`, `cantidad_ingreso`) VALUES
(1, 10, 400),
(1, 5, 20),
(1, 1, 80),
(3, 1, 1000),
(3, 2, 2000),
(3, 3, 3000),
(3, 4, 1000),
(17, 23, 123),
(17, 25, 22),
(24, 29, 123),
(0, 11, 100),
(26, 11, 5000),
(29, 9, 500),
(0, 3, 2000),
(0, 5, 100),
(0, 23, 20),
(35, 23, 2),
(36, 23, 100),
(36, 4, 200),
(36, 3, 100),
(37, 3, 7000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden_item`
--

CREATE TABLE `detalle_orden_item` (
  `orden_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `orden_item_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_orden_item`
--

INSERT INTO `detalle_orden_item` (`orden_id`, `item_id`, `orden_item_cantidad`) VALUES
(1, 4, 200),
(2, 10, 4),
(2, 33, 5),
(2, 34, 40),
(2, 29, 8),
(56, 23, 2323),
(55, 26, 123),
(57, 27, 8),
(43, 52, 3434),
(43, 55, 334),
(58, 0, 0),
(59, 0, 0),
(60, 28, 0),
(61, 24, 1),
(54, 26, 2123),
(54, 26, 2),
(64, 8, 88888),
(64, 32, 789797),
(65, 27, 8),
(65, 11, 2),
(66, 27, 8),
(66, 11, 2),
(67, 27, 8),
(67, 11, 2),
(67, 23, 222222),
(56, 23, 2323),
(55, 26, 123),
(57, 27, 8),
(43, 52, 3434),
(43, 55, 334),
(58, 0, 0),
(59, 0, 0),
(60, 28, 0),
(61, 24, 1),
(54, 26, 2123),
(54, 26, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_item`
--

CREATE TABLE `detalle_pedido_item` (
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `pedido_producto_cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `num_fact` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT current_timestamp(),
  `metodo_pago` int(11) NOT NULL,
  `id_cajero` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_fact`, `id_cliente`, `fechahora`, `metodo_pago`, `id_cajero`, `estado`, `iva`, `subtotal`, `total`) VALUES
(32, 3, '2023-04-02 03:19:07', 3, 1, 1, 12, 0, 0),
(33, 8, '2023-04-02 03:21:52', 3, 1, 2, 12, 266664, 298664),
(34, 19, '2023-04-02 03:41:03', 1, 1, 1, 12, 2000000, 2240000),
(35, 7, '2023-04-05 21:45:16', 2, 1, 2, 12, 74957300, 83952100),
(39, 14, '2023-04-05 21:50:18', 2, 1, 2, 12, 0, 0),
(40, 14, '2023-04-05 21:50:44', 2, 1, 2, 12, 0, 0),
(45, 6, '2023-04-06 08:28:18', 3, 1, 99, 12, 350, 392),
(46, 11, '2023-04-06 08:42:52', 1, 1, 99, 12, 4000, 4480),
(51, 4, '2023-04-29 20:32:39', 2, 1, 2, 12, 340, 380.8),
(52, 4, '2023-05-02 17:12:19', 2, 1, 1, 12, 100000, 112000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefebodega`
--

CREATE TABLE `jefebodega` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `cedula` int(10) NOT NULL,
  `celular` varchar(14) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jefebodega`
--

INSERT INTO `jefebodega` (`id`, `nombre`, `apellido`, `cedula`, `celular`, `correo`, `estado`) VALUES
(1, 'Angel', 'Cruz', 985637482, '0956897412', 'angelcruz@gmail.com', 1),
(1, 'Angel', 'Cruz', 985637482, '0956897412', 'angelcruz@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefecompras`
--

CREATE TABLE `jefecompras` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Apellido` varchar(250) NOT NULL,
  `Identificacion` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Correo` varchar(155) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jefecompras`
--

INSERT INTO `jefecompras` (`id`, `Nombre`, `Apellido`, `Identificacion`, `Estado`, `Correo`, `Telefono`) VALUES
(1, 'Marcos', 'Palacios', 923896591, 1, 'nohaybolo@gmail.com', 1234567890);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `id_num` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `detalles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodo_pago`
--

INSERT INTO `metodo_pago` (`id_num`, `nombre`, `detalles`) VALUES
(1, 'Efectivo', 'Pago directo en caja'),
(2, 'Tarjeta de crédito/debito', 'Pago con tajerta'),
(3, 'Crédito interno', 'Pago con crédito interno estableciendo convenio de pago a cuotas fijas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `orden_id` int(11) NOT NULL,
  `idjefecompra` int(11) NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `cotizacion_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compra`
--

INSERT INTO `orden_compra` (`orden_id`, `idjefecompra`, `fecha_hora`, `cotizacion_id`, `estado`, `descripcion`) VALUES
(43, 1, '2023-03-30 22:54:40', 35, 3, '433'),
(54, 1, '2023-04-04 21:52:10', 63, 3, 'qweqwe'),
(55, 1, '2023-04-04 21:53:32', 51, 4, '123'),
(56, 1, '2023-04-04 21:55:59', 52, 3, '123'),
(57, 1, '2023-04-05 00:34:28', 58, 1, 'ghhj'),
(58, 1, '2023-04-05 07:21:04', 0, 1, ''),
(59, 1, '2023-04-05 07:21:07', 0, 1, ''),
(60, 1, '2023-04-05 07:22:02', 61, 1, ''),
(61, 1, '2023-04-05 07:23:06', 61, 1, ''),
(64, 1, '2023-04-05 23:24:58', 63, 2, '123123'),
(65, 1, '2023-04-06 00:10:23', 66, 1, 'orden definitiva para el proveedor basado en la cotización  #66'),
(66, 1, '2023-04-06 01:01:50', 68, 1, 'adssda'),
(67, 1, '2023-04-06 01:04:04', 68, 1, '2222'),
(68, 1, '2023-04-09 02:18:19', 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `IdJefeBodega` int(11) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `IdJefeBodega`, `fechaHora`, `Estado`) VALUES
(5, 1, '2023-03-26 00:07:20', 1),
(7, 1, '2023-03-26 00:07:36', 0),
(8, 1, '2023-03-26 20:19:00', 1),
(10, 1, '2023-03-01 15:19:00', 1),
(11, 1, '2023-04-02 20:24:04', 1),
(12, 1, '2023-04-02 20:24:16', 2),
(16, 1, '2023-04-02 20:24:36', 1),
(17, 1, '2023-04-02 20:24:41', 0),
(18, 1, '2023-04-02 20:24:45', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `idTipo` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `stock`, `estado`, `marca`, `idTipo`, `codigo`) VALUES
(1, 'Teclado', 20, 1280, 1, NULL, 0, '78945'),
(2, 'Mouse', 10, 2100, 1, NULL, 0, '34345'),
(3, 'Iphone', 1000, 9400, 1, 'apple', 15, 'iphone13'),
(4, 'Samsung Galaxy', 300, 1185, 0, 'samsung', 16, 'galaxys20'),
(5, 'LG Monitor', 100, 100, 1, 'LG', 15, 'LG4K27'),
(6, 'HP Laptop', 480, 50, 0, 'HP', 16, 'HPEnvy13'),
(7, 'Bose Speaker', 50, 8, 1, 'Bose', 15, 'BoseSoundlink'),
(8, 'Cámara Sony', 180, 100, 0, 'Sony', 16, 'sonyalpha7'),
(9, 'Asus Laptop', 1200, 503, 1, 'Asus', 15, 'AsusZenbook'),
(10, 'Xbox Series X', 700, 400, 0, 'Microsoft', 16, 'xboxseriesx'),
(11, 'PS5', 900, 5099, 1, 'Sony', 15, 'ps5'),
(12, 'Smartwatch', 250, 400, 0, 'Samsung', 16, 'galaxywatch4'),
(14, 'Headphones', 80, 10, 0, 'JBL', 16, 'jbltune'),
(15, 'MacBook Pro', 800, 60, 1, 'Apple', 15, 'macbookpro'),
(17, 'GoPro Camera', 150, 6, 1, 'GoPro', 15, 'goprohero9'),
(18, 'Auriculares Sony', 70, 5, 0, 'Sony', 16, 'sonyheadphones'),
(19, 'Smart TV LG', 1000, 2, 1, 'LG', 15, 'lgsmarttv'),
(20, 'Audífonos Inalámbricos', 70, 3, 0, 'Samsung', 16, 'samsungbuds'),
(21, 'Laptop HP', 1300, 0, 1, 'HP', 15, 'hpnotebook'),
(22, 'Tablet Samsung', 150, 0, 0, 'Samsung', 16, 'samsungtablet'),
(23, 'Proyector Epson', 160, 2500, 1, 'Epson', 15, 'epsonprojector'),
(24, 'Impresora Canon', 100, 4, 0, 'Canon', 16, 'canonprinter'),
(25, 'Bose Speaker', 90, 3, 1, 'Bose', 15, 'boseaudio'),
(26, 'Reloj inteligente Garmin', 300, 3, 0, 'Garmin', 16, 'garminwatch'),
(27, 'Teléfono Samsung', 200, 0, 1, 'Samsung', 15, 'samsunggalaxy'),
(28, 'Plancha de vapor', 60, 6, 0, 'Philips', 16, 'philipsiron'),
(29, 'Silla de escritorio', 170, 120, 100, 'Ikea', 15, 'ikeachair'),
(30, 'Refrigerador LG1231312312', 500, 1, 30, 'LG', 2, 'lgfridge'),
(31, 'Tablet Amazon Fire', 350, 0, 90, 'Amazon', 12, 'amazonfiretablet'),
(32, 'Altavoz Harman Kardon123123', 50, 3, 70, 'Harman Kardon', 0, 'hkaudiospeaker'),
(33, 'Cafetera Nespresso2', 70, 4, 60, 'Nespresso', 0, 'nespressomachine'),
(34, 'Micrófono Rode1asasdassad', 30, 1, 80, 'Rode', 0, 'rodemic'),
(35, 'Smartwatch Fitbitasds', 90, 0, 50, 'Fitbit', 0, 'fitbitsmartwatch'),
(37, 'Consola de juegos retro1', 100, 1, 100, 'Retro Games', 0, 'retroconsole'),
(43, 'prueba tipo1', 12, 12, 1, 'asdas', 12, 'sdasd'),
(64, 'pc gamer', 800, 10, 600, 'Asus', 4, 'PCG-AS01'),
(66, 'kukfvhjfhj', 8, 5, 0, '', 0, '852');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `Razon_Social` text NOT NULL,
  `RUC` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `Razon_Social`, `RUC`) VALUES
(1, 'Computron S.A.', '0911127528001'),
(2, 'El Rosado S.A.', '0912345678001'),
(3, 'MegaMax S.A.', '0912345678001'),
(4, 'Tech Solutions S.A.', '0912345678001'),
(5, 'GreenFields S.A.', '0912345678001'),
(6, 'InnovaSoft S.A.', '0912345678001'),
(7, 'Blue Ocean S.A.', '0912345678001'),
(8, 'Express Cargo S.A.', '0912345678001'),
(9, 'Quality Foods S.A.', '0912345678001'),
(10, 'BeautyZone S.A.', '0912345678001'),
(11, 'SmartVision S.A.', '0912345678001'),
(12, 'GlobalTrade S.A.', '0912345678001'),
(13, 'Muebles Modernos S.A.', '0912345678001'),
(14, 'Tecnología y Servicios S.A.', '0912345678001'),
(15, 'Cultivos y Agroindustria S.A.', '0912345678001'),
(16, 'Ingeniería y Construcciones S.A.', '0912345678001'),
(17, 'Comercializadora de Productos S.A.', '0912345678001'),
(18, 'Distribuidora de Productos Médicos S.A.', '0912345678001'),
(19, 'Productos de Limpieza y Mantenimiento S.A.', '0912345678001'),
(20, 'Servicios de Consultoría S.A.', '0912345678001'),
(21, 'Industria Textil S.A.', '0912345678001'),
(22, 'Alimentos y Bebidas S.A.', '0912345678001'),
(23, 'Soluciones Empresariales S.A.', '0912345678001'),
(24, 'Productos de Belleza S.A.', '0912345678001'),
(25, 'Importadora de Maquinarias S.A.', '0912345678001'),
(26, 'Materiales de Construcción S.A.', '0912345678001'),
(27, 'Agencia de Viajes y Turismo S.A.', '0912345678001'),
(28, 'Servicios de Mantenimiento Industrial S.A.', '0912345678001'),
(29, 'Cultivos Orgánicos S.A.', '0912345678001'),
(30, 'Venta de Equipos Médicos S.A.', '0912345678001'),
(31, 'Comercializadora de Productos Agrícolas S.A.', '0912345678001'),
(32, 'Servicios de Publicidad y Marketing S.A.', '0912345678001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_egreso`
--

CREATE TABLE `recibo_egreso` (
  `id_egreso` int(11) NOT NULL,
  `id_jefebodega` int(11) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_factura` int(11) NOT NULL,
  `id_bodega` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recibo_egreso`
--

INSERT INTO `recibo_egreso` (`id_egreso`, `id_jefebodega`, `fechahora`, `id_factura`, `id_bodega`, `estado`) VALUES
(1, 1, '2023-04-09 07:22:33', 39, 2, 2),
(2, 1, '2023-04-09 07:28:15', 40, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_ingreso`
--

CREATE TABLE `recibo_ingreso` (
  `id_ingreso` int(11) NOT NULL,
  `id_jefebodega` int(11) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_bodega` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recibo_ingreso`
--

INSERT INTO `recibo_ingreso` (`id_ingreso`, `id_jefebodega`, `fechahora`, `estado`, `id_pedido`, `id_bodega`) VALUES
(1, 1, '2023-04-09 07:20:59', 2, 12, 2),
(2, 1, '2023-04-09 07:21:23', 1000, 11, 2),
(3, 1, '2023-04-29 20:20:52', 1000, 11, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `Descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `Descripcion`) VALUES
(2, 'asdasdas'),
(15, 'asdasdasdasd'),
(16, 'asdsdaasd'),
(17, 'fsdsdfsdf'),
(18, 'ewfsdfsd'),
(19, 'sdfdsf'),
(20, 'ytutyutyutyutyut'),
(21, '1'),
(22, '2'),
(26, '123231');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`num_fact`);

--
-- Indices de la tabla `jefecompras`
--
ALTER TABLE `jefecompras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recibo_egreso`
--
ALTER TABLE `recibo_egreso`
  ADD PRIMARY KEY (`id_egreso`);

--
-- Indices de la tabla `recibo_ingreso`
--
ALTER TABLE `recibo_ingreso`
  ADD PRIMARY KEY (`id_ingreso`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `num_fact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `jefecompras`
--
ALTER TABLE `jefecompras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `recibo_egreso`
--
ALTER TABLE `recibo_egreso`
  MODIFY `id_egreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recibo_ingreso`
--
ALTER TABLE `recibo_ingreso`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
