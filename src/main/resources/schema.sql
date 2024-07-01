/** 既存テーブル削除（リレーションを考慮した順番で削除　※つまりテーブル作成順序の反対） */
DROP TABLE IF EXISTS `cost_database_app`.`design_contract`;
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

/** 21.設計契約テーブル */
CREATE TABLE `cost_database_app`.`design_contract` (
    `dc_id` INT NOT NULL AUTO_INCREMENT,
    `dc_latest_editor` VARCHAR(10) NOT NULL,
    `dc_created_at` DATETIME NOT NULL,
    `dc_updated_at` DATETIME NOT NULL,
    `contract_number` VARCHAR(10) NOT NULL,
    `contract_name` VARCHAR(100) NOT NULL,
    `customer_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`dc_id`),
    INDEX `dc_latest_editor_idx` (`dc_latest_editor` ASC) VISIBLE,
    CONSTRAINT `dc_latest_editor`
        FOREIGN KEY (`dc_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);