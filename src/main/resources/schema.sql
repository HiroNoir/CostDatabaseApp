/** 既存テーブル削除（リレーションを考慮した順番で削除　※つまりテーブル作成順序の反対） */
DROP TABLE IF EXISTS `cost_database_app`.`breakdown_co`;
DROP TABLE IF EXISTS `cost_database_app`.`construction_contract`;
DROP TABLE IF EXISTS `cost_database_app`.`design_contract`;
DROP TABLE IF EXISTS `cost_database_app`.`employee`;
DROP TABLE IF EXISTS `cost_database_app`.`estimate_type`;

/** 01.内訳種別区分設定 */
CREATE TABLE `cost_database_app`.`estimate_type` (
    `et_id` INTEGER NOT NULL,
    `type_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`et_id`),
    UNIQUE INDEX `et_id_UNIQUE` (`et_id` ASC) VISIBLE);

/** 11.従業員テーブル */
CREATE TABLE `cost_database_app`.`employee` (
    `code` VARCHAR(10) NOT NULL,
    `first_name` VARCHAR(10) NOT NULL,
    `last_name` VARCHAR(10) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `role` ENUM ('GENERAL', 'EDITOR', 'ADMIN') NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    `delete_flg` TINYINT NOT NULL,
    PRIMARY KEY (`code`));

/** 21.設計契約テーブル */
CREATE TABLE `cost_database_app`.`design_contract` (
    `dc_id` INTEGER NOT NULL AUTO_INCREMENT,
    `contract_number` VARCHAR(10) NOT NULL,
    `contract_name` VARCHAR(100) NOT NULL,
    `customer_name` VARCHAR(30) NOT NULL,
    `dc_created_at` DATETIME NOT NULL,
    `dc_updated_at` DATETIME NOT NULL,
    `dc_latest_editor` VARCHAR(10) NOT NULL,
    `dc_delete_flg` TINYINT NOT NULL,
    PRIMARY KEY (`dc_id`),
    INDEX `dc_latest_editor_idx` (`dc_latest_editor` ASC) VISIBLE,
    CONSTRAINT `dc_latest_editor`
        FOREIGN KEY (`dc_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);

/** 22.工事契約テーブル */
CREATE TABLE `cost_database_app`.`construction_contract` (
    `cc_id` INTEGER NOT NULL AUTO_INCREMENT,
    `cc_dc_id` INTEGER NOT NULL,
    `cc_et_id` INTEGER NOT NULL,
    `estimate_year` VARCHAR(10) NOT NULL,
    `estimate_month` VARCHAR(10) NOT NULL,
    `construction_period` VARCHAR(10) NOT NULL,
    `project_name` VARCHAR(100) NOT NULL,
    `site_address` VARCHAR(100) NOT NULL,
    `site_area` DOUBLE NOT NULL,
    `separete_construction` VARCHAR(100) NOT NULL,
    `planned_price` BIGINT NOT NULL,
    `contract_price` BIGINT NOT NULL,
    `contractor_name` VARCHAR(30) NOT NULL,
    `remarks_section` LONGTEXT NOT NULL,
    `blueprint_address` TEXT NOT NULL,
    `cc_created_at` DATETIME NOT NULL,
    `cc_updated_at` DATETIME NOT NULL,
    `cc_latest_editor` VARCHAR(10) NOT NULL,
    `cc_delete_flg` TINYINT NOT NULL,
    PRIMARY KEY (`cc_id`),
    INDEX `cc_dc_id_idx` (`cc_dc_id` ASC) VISIBLE,
    INDEX `cc_et_id_idx` (`cc_et_id` ASC) VISIBLE,
    INDEX `cc_latest_editor_idx` (`cc_latest_editor` ASC) VISIBLE,
    CONSTRAINT `cc_dc_id`
        FOREIGN KEY (`cc_dc_id`)
        REFERENCES `cost_database_app`.`design_contract` (`dc_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `cc_et_id`
        FOREIGN KEY (`cc_et_id`)
        REFERENCES `cost_database_app`.`estimate_type` (`et_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `cc_latest_editor`
        FOREIGN KEY (`cc_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);

/** 23.内訳頭紙テーブル */
CREATE TABLE `cost_database_app`.`breakdown_co` (
    `bco_id` INTEGER NOT NULL AUTO_INCREMENT,
    `bco_cc_id` INTEGER NOT NULL,
    `bco_co_id` INTEGER NOT NULL,
    `bco_price` BIGINT NOT NULL,
    `bco_created_at` DATETIME NOT NULL,
    `bco_updated_at` DATETIME NOT NULL,
    `bco_latest_editor` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`bco_id`),
    INDEX `bco_cc_id_idx` (`bco_cc_id` ASC) VISIBLE,
    INDEX `bco_co_id_idx` (`bco_co_id` ASC) VISIBLE,
    INDEX `bco_latest_editor_idx` (`bco_latest_editor` ASC) VISIBLE,
    CONSTRAINT `bco_cc_id`
        FOREIGN KEY (`bco_cc_id`)
        REFERENCES `cost_database_app`.`construction_contract` (`cc_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bco_co_id`
        FOREIGN KEY (`bco_co_id`)
        REFERENCES `cost_database_app`.`category_outline` (`co_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bco_latest_editor`
        FOREIGN KEY (`bco_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);