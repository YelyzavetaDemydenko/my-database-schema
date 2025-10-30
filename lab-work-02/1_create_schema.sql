CREATE TABLE `Client` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) UNIQUE NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `registration_date` date NOT NULL DEFAULT (CURRENT_DATE)
);

CREATE TABLE `Category` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) UNIQUE NOT NULL,
  `description` text
);

CREATE TABLE `Product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sku` varchar(100) UNIQUE NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL DEFAULT 0,
  `quantity` int NOT NULL DEFAULT 0,
  `is_active` boolean NOT NULL DEFAULT true,
  `material` varchar(100),
  `brand` varchar(100)
);

CREATE TABLE `Order` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `order_date` date NOT NULL DEFAULT (CURRENT_DATE),
  `status` varchar(50) NOT NULL DEFAULT 'new',
  `total` decimal(10,2) NOT NULL DEFAULT 0
);

CREATE TABLE `OrderItem` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`, `product_id`)
);

ALTER TABLE `Product` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Order` ADD FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`);

ALTER TABLE `OrderItem` ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`);

ALTER TABLE `OrderItem` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);