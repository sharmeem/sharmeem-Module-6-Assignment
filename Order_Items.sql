-- Active: 1698769016556@@127.0.0.1@3306@test
CREATE TABLE `order_items` (
    `id` BIGINT (20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `order_id` BIGINT (20) UNSIGNED NOT NULL,
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    `product_id` BIGINT (20) UNSIGNED NOT NULL,
    FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
    `quantity` BIGINT (20) UNSIGNED NOT NULL,
    `unit_price` BIGINT (20) UNSIGNED NOT NULL
)