START TRANSACTION;
SET time_zone = "+00:00";
USE portaria;


CREATE TABLE `registro` (
  `id` int NOT NULL,
  `data_hora` varchar(20) NOT NULL,
  `veiculos_id` int DEFAULT NULL
)



INSERT INTO `registro` (`id`, `data_hora`, `veiculos_id`) VALUES
(1, '16/10/2023 19:00:32', 1),
(2, '16/10/2023 23:10:31', 1),
(3, '16/10/2023 19:01:00', 2),
(4, '16/10/2023 19:01:10', 3),
(5, '16/10/2023 19:01:15', 4),
(6, '16/10/2023 19:01:25', 5),
(7, '16/10/2023 22:10:32', 2),
(8, '16/10/2023 22:14:32', 3),
(9, '16/10/2023 22:20:52', 4);

CREATE TABLE `veiculos` (
  `id` mediumint NOT NULL,
  `aluno` varchar(50) NOT NULL,
  `placa` varchar(20) NOT NULL
)


INSERT INTO `veiculos` (`id`, `aluno`, `placa`) VALUES
(1, 'Catarina Santos', 'JTF-0L95'),
(2, 'Pietro Porto', 'YFE-8L59'),
(3, 'Joana Jesus', 'KJP-7M28'),
(4, 'Letícia Rocha', 'HEM-9V76'),
(5, 'Alícia Freitas', 'UYY-9C19');


ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `registro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `veiculos`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
