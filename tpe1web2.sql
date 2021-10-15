-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 03:25:58
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpe1web2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `descripcion` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`, `descripcion`) VALUES
(10, 'Lucha', 'Los videojuegos de lucha, como indica su nombre, recrean combates entre personajes controlados tanto por un jugador como por la computadora o el sistema . El jugador ve a los combatientes desde una perspectiva lateral, como si se tratase de un espectador. Este tipo de videojuegos ponen especial énfasis en las artes marciales, reales o ficticias (generalmente imposibles de imitar), u otros tipos de enfrentamientos sin armas como el boxeo o la lucha libre. Otros videojuegos permiten también usar armas blancas como pueden ser espadas, hachas, martillos, etc. o ataques a distancia, normalmente de carácter mágico o etereo. Aunque este género se introdujo a mediados de los años 1980, no se popularizó hasta la llegada de Street Fighter II. Con la llegada de los gráficos tridimensionales no cambió'),
(11, 'Disparos en primera persona', 'En los videojuegos de disparos en primera persona, conocidos también como FPS (First Person Shooter), las acciones básicas son mover al personaje y usar un arma, un arma se anuncia en la pantalla en primer plano y el jugador puede interactuar con éste. Esta perspectiva tiene por meta dar la impresión de ser el personaje y así permitir una identificación fuerte (Perspectiva de primera persona). Los gráficos en tres dimensiones aumentan esta impresión.'),
(13, 'Arcade', ' plataformas, laberintos, aventuras. El usuario debe superar pantallas para seguir jugando. Imponen un ritmo rápido y requieren tiempos de reacción mínimos. Por ejemplo el juego de The last of us ps4 de Sony en la que el usuario desempeña el papel de un superviviente. Tiene que hacer frente a feroces infectados y despiadados bandidos humanos.'),
(14, 'Deportivo', 'fútbol, tenis, baloncesto y conducción. Recrean diversos deportes. Requieren habilidad, rapidez y precisión. Como el nba 2k14 ps3 de Sony de baloncesto.'),
(15, 'Estrategia', 'aventuras, rol, juegos de guerra…Consisten en trazar una estrategia para superar al contrincante. Exigen concentración, saber administrar recursos, pensar y definir estrategias.'),
(16, 'Simulación', 'aviones, simuladores de una situación o instrumentales… Permiten experimentar e investigar el funcionamiento de máquinas, fenómenos, situaciones y asumir el mando.'),
(17, 'Juegos de mesa:', 'habilidad, preguntas y respuestas…La tecnología informática que sustituye al material tradicional del juego y hasta al adversario.'),
(18, 'Juegos musicales', 'juegos que inducen a la interacción del jugador con la música y cuyo objetivo es seguir los patrones de una canción. Como puede ser el caso del juego de la voz para ps3 en el que las la letra de la canción aparecen en pantalla junto a unas barras que nos indican cómo estamos cantando, si nos estamos acercando al tono de la canción y la puntuación que estamos consiguiendo.'),
(20, 'RPG DE ACCIÓN', 'Subgénero de los RPG, o juegos de rol, que se caracteriza principalmente porque sus combates se desarrollan en tiempo real, teniendo relevancia no sólo el potencial estadístico del personaje sino también la habilidad del jugador, esto se ve reflejado cuando subes un personaje de nivel, pues a medida que tus estadísticas suben entonces serás mas fuerte y te será más fácil vencer a los enemigos, juegos como Final fantasy 15 y The Witcher 3 representan bastante bien juegos de Acción RPG.'),
(21, 'AVENTURA', 'Género caracterizado por la exploración, investigación y resolución de puzzles, la interacción con personajes y el avance manera lineal, centrado en la trama del juego, algunos ejemplos para juegos de aventura son la saga principal de Super Mario y Banjo Kazoei, son juego donde vemos que se utilizan estos elementos.'),
(22, 'BAILE', 'Subgénero de los juegos musicales centrados en representar algún tipo de baile o coreografía o bien bailar un pinche cumbión bien loco, mediante el uso de dispositivos de control por movimiento, los juegos de baile que más nos hacen creer que somos expertos bailarines son Just Dance de Ubisoft y Dance Dance Revolution de Kanami');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juego` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `nombre`, `precio`, `plataforma`, `id_genero`) VALUES
(32, 'Counter Strike', 89, 'Steam', 11),
(33, 'League Of Legends', 89, 'Riot Games', 15),
(34, 'Uno', 98, 'Steam', 15),
(35, 'Wow', 96, 'Steam', 10),
(36, 'Day Z', 89, 'Steam', 20),
(37, 'World War Z', 69, 'Epic Games', 16),
(38, 'Simulador de Camiones', 96, 'Ubisoft', 16),
(39, 'Formula 1', 962, 'Steam', 16),
(40, 'FIFA 2021', 69563100, 'Ubisoft', 14),
(41, 'PES 2006', 5959, 'Steam', 14),
(42, 'Pac-Man', 59599, 'Virtual', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `clave` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_usuario`, `email`, `clave`) VALUES
(1, 'agusdinatale96@gmail.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
