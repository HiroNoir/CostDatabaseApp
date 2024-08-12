/** 既存テーブル削除（リレーションを考慮した順番で削除　※つまりテーブル作成順序の反対） */
DROP TABLE IF EXISTS `cost_database_app`.`breakdown_cs`;
DROP TABLE IF EXISTS `cost_database_app`.`information_db`;
DROP TABLE IF EXISTS `cost_database_app`.`breakdown_cd`;
DROP TABLE IF EXISTS `cost_database_app`.`breakdown_co`;
DROP TABLE IF EXISTS `cost_database_app`.`construction_contract`;
DROP TABLE IF EXISTS `cost_database_app`.`design_contract`;
DROP TABLE IF EXISTS `cost_database_app`.`employee`;
DROP TABLE IF EXISTS `cost_database_app`.`category_subject`;
DROP TABLE IF EXISTS `cost_database_app`.`information_item`;
DROP TABLE IF EXISTS `cost_database_app`.`purpose_outline`;
DROP TABLE IF EXISTS `cost_database_app`.`purpose_detail`;
DROP TABLE IF EXISTS `cost_database_app`.`category_detail`;
DROP TABLE IF EXISTS `cost_database_app`.`category_outline`;
DROP TABLE IF EXISTS `cost_database_app`.`estimate_type`;

/** 01.内訳種別区分設定 */
CREATE TABLE `cost_database_app`.`estimate_type` (
    `et_id` INTEGER NOT NULL,
    `et_type_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`et_id`),
    UNIQUE INDEX `et_id_UNIQUE` (`et_id` ASC) VISIBLE);

/** 02.内訳頭紙区分設定 */
CREATE TABLE `cost_database_app`.`category_outline` (
    `co_id` INTEGER NOT NULL,
    `co_type_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`co_id`),
    UNIQUE INDEX `co_id_UNIQUE` (`co_id` ASC) VISIBLE);

/** 03.内訳種目区分設定 */
CREATE TABLE `cost_database_app`.`category_detail` (
    `cd_id` INTEGER NOT NULL,
    `cd_type_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`cd_id`),
    UNIQUE INDEX `cd_id_UNIQUE` (`cd_id` ASC) VISIBLE);

/** 04.用途概略区分設定 */
CREATE TABLE `cost_database_app`.`purpose_outline` (
    `po_id` INTEGER NOT NULL,
    `po_type_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`po_id`),
    UNIQUE INDEX `po_id_UNIQUE` (`po_id` ASC) VISIBLE);

/** 05.用途詳細区分設定 */
CREATE TABLE `cost_database_app`.`purpose_detail` (
    `pd_id` INTEGER NOT NULL,
    `pd_po_id` INTEGER NOT NULL,
    `pd_type_name` VARCHAR(30) NOT NULL,
    `pd_included_type` VARCHAR(200) NOT NULL,
    PRIMARY KEY (`pd_id`),
    UNIQUE INDEX `pd_id_UNIQUE` (`pd_id` ASC) VISIBLE);

/** 06.内訳情報区分設定 */
CREATE TABLE `cost_database_app`.`information_item` (
    `ii_id` INTEGER NOT NULL,
    `ii_item_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`ii_id`),
    UNIQUE INDEX `ii_id_UNIQUE` (`ii_id` ASC) VISIBLE);

/** 07.内訳科目区分設定 */
CREATE TABLE `cost_database_app`.`category_subject` (
    `cs_id` INTEGER NOT NULL,
    `cs_co_id` INTEGER NOT NULL,
    `cs_cd_id` INTEGER NOT NULL,
    `cs_type_name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`cs_id`),
    UNIQUE INDEX `cs_id_UNIQUE` (`cs_id` ASC) VISIBLE);

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
    `bco_delete_flg` TINYINT NOT NULL,
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

/** 24.内訳種目テーブル */
CREATE TABLE `cost_database_app`.`breakdown_cd` (
    `bcd_id` INTEGER NOT NULL AUTO_INCREMENT,
    `bcd_bco_id` INTEGER NOT NULL,
    `bcd_cd_id` INTEGER NOT NULL,
    `bcd_po_id` INTEGER NOT NULL,
    `bcd_pd_id` INTEGER NOT NULL,
    `bcd_order` INTEGER NOT NULL,
    `bcd_type_name` VARCHAR(30) NOT NULL,
    `bcd_price` BIGINT NOT NULL,
    `bcd_area_building` DOUBLE NOT NULL,
    `bcd_area_totalfloor` DOUBLE NOT NULL,
    `bcd_area_renovation` DOUBLE NOT NULL,
    `bcd_area_exterior` DOUBLE NOT NULL,
    `bcd_created_at` DATETIME NOT NULL,
    `bcd_updated_at` DATETIME NOT NULL,
    `bcd_latest_editor` VARCHAR(10) NOT NULL,
    `bcd_delete_flg` TINYINT NOT NULL,
    PRIMARY KEY (`bcd_id`),
    INDEX `bcd_bco_id_idx` (`bcd_bco_id` ASC) VISIBLE,
    INDEX `bcd_cd_id_idx` (`bcd_cd_id` ASC) VISIBLE,
    INDEX `bcd_po_id_idx` (`bcd_po_id` ASC) VISIBLE,
    INDEX `bcd_pd_id_idx` (`bcd_pd_id` ASC) VISIBLE,
    INDEX `bcd_latest_editor_idx` (`bcd_latest_editor` ASC) VISIBLE,
    CONSTRAINT `bcd_bco_id`
        FOREIGN KEY (`bcd_bco_id`)
        REFERENCES `cost_database_app`.`breakdown_co` (`bco_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bcd_cd_id`
        FOREIGN KEY (`bcd_cd_id`)
        REFERENCES `cost_database_app`.`category_detail` (`cd_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bcd_po_id`
        FOREIGN KEY (`bcd_po_id`)
        REFERENCES `cost_database_app`.`purpose_outline` (`po_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bcd_pd_id`
        FOREIGN KEY (`bcd_pd_id`)
        REFERENCES `cost_database_app`.`purpose_detail` (`pd_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bcd_latest_editor`
        FOREIGN KEY (`bcd_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);

/** 25.内訳情報テーブル */
CREATE TABLE `cost_database_app`.`information_db` (
    `idb_id` INTEGER NOT NULL AUTO_INCREMENT,
    `idb_bcd_id` INTEGER NOT NULL,
    `idb_ii_id` INTEGER NOT NULL,
    `idb_data_text` VARCHAR(100) NOT NULL,
    `idb_data_double` DOUBLE NOT NULL,
    `idb_data_bigint` BIGINT NOT NULL,
    `idb_created_at` DATETIME NOT NULL,
    `idb_updated_at` DATETIME NOT NULL,
    `idb_latest_editor` VARCHAR(10) NOT NULL,
    `idb_delete_flg` TINYINT NOT NULL,
    PRIMARY KEY (`idb_id`),
    INDEX `idb_id_bcd_idx` (`idb_bcd_id` ASC) VISIBLE,
    INDEX `idb_ii_id_idx` (`idb_ii_id` ASC) VISIBLE,
    INDEX `idb_latest_editor_idx` (`idb_latest_editor` ASC) VISIBLE,
    CONSTRAINT `idb_bcd_id`
        FOREIGN KEY (`idb_bcd_id`)
        REFERENCES `cost_database_app`.`breakdown_cd` (`bcd_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `idb_ii_id`
        FOREIGN KEY (`idb_ii_id`)
        REFERENCES `cost_database_app`.`information_item` (`ii_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `idb_latest_editor`
        FOREIGN KEY (`idb_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);

/** 26.内訳科目テーブル */
CREATE TABLE `cost_database_app`.`breakdown_cs` (
    `bcs_bcd_id` INTEGER NOT NULL,
    `bcs_cs_id` INTEGER NOT NULL,
    `bcs_data_text` VARCHAR(100) NOT NULL,
    `bcs_data_bigint` BIGINT NOT NULL,
    `bcs_created_at` DATETIME NOT NULL,
    `bcs_updated_at` DATETIME NOT NULL,
    `bcs_latest_editor` VARCHAR(10) NOT NULL,
    `bcs_delete_flg` TINYINT NOT NULL,
    PRIMARY KEY (`bcs_bcd_id`, `bcs_cs_id`),
    INDEX `bcs_bcd_id_idx` (`bcs_bcd_id` ASC) VISIBLE,
    INDEX `bcs_cs_id_idx` (`bcs_cs_id` ASC) VISIBLE,
    INDEX `bcs_latest_editor_idx` (`bcs_latest_editor` ASC) VISIBLE,
    CONSTRAINT `bcs_bcd_id`
        FOREIGN KEY (`bcs_bcd_id`)
        REFERENCES `cost_database_app`.`breakdown_cd` (`bcd_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bcs_cs_id`
        FOREIGN KEY (`bcs_cs_id`)
        REFERENCES `cost_database_app`.`category_subject` (`cs_id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT `bcs_latest_editor`
        FOREIGN KEY (`bcs_latest_editor`)
        REFERENCES `cost_database_app`.`employee` (`code`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION);
