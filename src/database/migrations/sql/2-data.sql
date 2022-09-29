START TRANSACTION;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `role`, `image_url`) VALUES 
('1s2d-5a1d5-as515as115a1s1c1s1', 'Seu Madruga', 'seumadruga@gmail.com', 'LSJNFASKFMKASAS1C5A1SC561A5V11V1A11V61', 1, 1, 'https://f.i.uol.com.br/fotografia/2018/08/07/15336661995b69e39778b65_1533666199_3x2_md.jpg'),
('d1v5-d065d-0d5vv5ds06d95d92d6', 'Julius Rock', 'juliusrock@gmail.com', 'KJS5SA5F1AS5F1AS515F1S5A1GASAS5G1AH5R4', 1, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlY4wflOWigiAIXPxREE-O5LEqbxX0jEJRYw&usqp=CAU'),
('s11f-26as2-6e5g56j2jt62t6a2d2', 'Michael Kyle', 'michaelkyle@gmail.com', NULL, 0, 2, 'https://imagem.natelinha.uol.com.br/grande/wayans.jpg');
COMMIT;