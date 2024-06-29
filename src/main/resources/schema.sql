/** 既存テーブル削除 */
DROP TABLE IF EXISTS `cost_database_app`.`employee`;

/** 11.従業員テーブル */
CREATE TABLE `cost_database_app`.`employee` (
    `code` VARCHAR(10) NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `first_name` VARCHAR(10) NOT NULL,
    `last_name` VARCHAR(10) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `role` ENUM ('GENERAL', 'EDITOR', 'ADMIN') NOT NULL,
    PRIMARY KEY (`code`));
