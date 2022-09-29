SET time_zone = "America/Sao_Paulo"; -- "-03:00"; -- Horario de Brasilia

-- USE DB_NAME;

START TRANSACTION;


DROP TABLE IF EXISTS `migrations`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    `id` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) DEFAULT NULL,
    `active` tinyint(1) NOT NULL DEFAULT 0,
    `role` int(11) NOT NULL,
    `image_url` varchar(255) DEFAULT NULL,
    `created_at` datetime NOT NULL DEFAULT current_timestamp(),
    `updated_at` datetime NOT NULL DEFAULT current_timestamp()

);

CREATE TABLE `enterprise` (
    `id` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL
    
);

CREATE TABLE `enterprise_settings` (
    `round_taxes` tinyint(1) NOT NULL
    
);

CREATE TABLE `user_settings` (
    `orders_list_style` varchar(255) NOT NULL -- full, group, tabbed

);

CREATE TABLE `customers` (
    `id` varchar(255) NOT NULL,
    `name` varchar(255) NOT NULL,
    `image_url` varchar(255) DEFAULT NULL,
    `created_at` datetime NOT NULL DEFAULT current_timestamp(),
    `updated_at` datetime NOT NULL DEFAULT current_timestamp()
);

CREATE TABLE `delivery_points`(
    `id` varchar(255) NOT NULL,
    `zip_code` varchar(255) NOT NULL,
    `point_name` varchar(255) NOT NULL,
    `point_type` varchar(255) NOT NULL, -- Bar, Hotel, Condominium, School, Hospital, Edifice, Church
    `reference_point` varchar(255) NOT NULL,
    `created_at` datetime NOT NULL DEFAULT current_timestamp(),
    `updated_at` datetime NOT NULL DEFAULT current_timestamp()
);

-- zip_code not changable
CREATE TABLE `addresses` (
    `id` varchar(255) NOT NULL,
    `customer_id` varchar(255) NOT NULL,
    `zip_code` varchar(8) NOT NULL,
    `delivery_point` varchar(255) NOT NULL,
    `reference_point` varchar(255) NOT NULL,
    `street_number` varchar(50) NOT NULL,
    `is_default` tinyint(1) NOT NULL,
    `created_at` datetime NOT NULL DEFAULT current_timestamp(),
    `updated_at` datetime NOT NULL DEFAULT current_timestamp()
);

COMMIT;
