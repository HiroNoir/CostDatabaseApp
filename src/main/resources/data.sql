
/** 01.内訳種別区分設定 */
INSERT INTO estimate_type (et_id, type_name) VALUES (10, '官庁提示設計書');
INSERT INTO estimate_type (et_id, type_name) VALUES (20, '施工業者見積書');
INSERT INTO estimate_type (et_id, type_name) VALUES (30, '補助金用設計書');
INSERT INTO estimate_type (et_id, type_name) VALUES (40, '実施設計概算書');

/** 11.従業員テーブル */
INSERT INTO employee (code, first_name, last_name, password, role, created_at, updated_at, delete_flg)
VALUES ('775', '浩明', '山本', '$2a$10$KnfWut5vjLSI1RPlss6xZuukP9NFk3AM/13tS14kdVc1Cs8UHNnue', 'ADMIN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);
INSERT INTO employee (code, first_name, last_name, password, role, created_at, updated_at, delete_flg)
VALUES ('TestEditor', '編集者', 'テスト', '$2a$10$z3pHxdzG752sSKejkOc9nuzhU.gBjtPf4hh5dJ/Vuz49kHHwDu5Le', 'EDITOR', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);
INSERT INTO employee (code, first_name, last_name, password, role, created_at, updated_at, delete_flg)
VALUES ('TestUser', 'ユーザー', 'テスト', '$2a$10$xL1oADCQD39UQ0JLVQRyBu/UyEyx77iYzWn/.7lk1fRFbTmm8YswW', 'GENERAL', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);

/** 21.設計契約テーブル */
INSERT INTO design_contract (contract_number, contract_name, customer_name, created_at, updated_at, latest_editor, delete_flg)
VALUES ('X2024-001', 'T再開発事業に係る施設建築物実施設計等業務', 'T市街地再開発組合', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);
INSERT INTO design_contract (contract_number, contract_name, customer_name, created_at, updated_at, latest_editor, delete_flg)
VALUES ('X2024-002', 'G察署庁舎実施設計', 'A警察本部', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775', 0);

/** 22.工事契約テーブル */
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (1, 30, '2019年', '8月', '1期', 'T再開発事業に係る解体工事', 'T地内', 15325.53, '再開発事業', 446400000, 408000000, 'O社', 'O社内訳は2019.7.31時点、設計書は2019.8.26時点', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (1, 30, '2020年', '11月', '2期', 'T再開発事業', 'T地内', 15325.53, '解体工事', 12980000000, 12735000000, 'O社', '・RIBC内訳書ではサインは大項目で計上されているが、ここでは各棟と外構に分けて計上する。\r\n・2020年3月23日当時の設計書から追加VE(2億円以上)を行うとしてO社と契約した。このコストデータはその追加VEを反映したものであり、結果落札率は98.11%となっている。', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2018年', '3月', '1期', 'G警察暑車庫棟取壊し等工事【RIBC復元】', 'G地内', 4744.64, '霊安室棟オーバースライダー(2期建築に移動)', 27460000, 24710000, 'K社', '・RIBC内訳のため、RIBC単価は仮単価\r\n・解体撤去工事詳細\r\n　車庫棟解体　1式　2,021,165円\r\n　危険物貯蔵所解体　1式　632,811円\r\n　倉庫解体　1式　541,920円\r\n　駐輪場解体　1式　209,322円\r\n　外構解体　1式　1,902,111円\r\n　電気設備解体　1式　78,145円\r\n　機械設備解体　1式　5,682,056円\r\n　計　5,682,056円', '決まり次第更新' ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2018年', '5月', '2期-1', 'G警察署庁舎建築工事【RIBC復元】', 'G地内', 4744.64, '電気、空調、管、エレベーター、外構', 919000000, 919000000, 'S社', '・RIBC内訳のため、RIBC単価は仮単価\r\n・解体撤去工事詳細\r\n　庁舎階段解体　1式　112,634円\r\n　外構解体　1式　2,841,840円\r\n計　2,954,474円\r\n', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2018年', '5月', '2期-2', 'G警察署庁舎電気工事', 'G地内', 4744.64, '建築、空調、管、エレベーター、外構', 198600000, 178700000, 'I社', '・入札結果のみ（内訳不明）', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2018年', '5月', '2期-3', 'G警察署庁舎空調工事', 'G地内', 4744.64, '建築、電気、管、エレベーター、外構', 134400000, 120960000, 'I社', '・入札結果のみ（内訳不明）', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2018年', '5月', '2期-4', 'G警察署庁舎管工事', 'G地内', 4744.64, '建築、電気、空調、エレベーター、外構', 91410000, 82260000, 'H社', '・入札結果のみ（内訳不明）\r\n・1回目予定価格86,260,000円で不調、2回目で落札', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2018年', '5月', '2期-5', 'G警察署庁舎エレベーター工事', 'G地内', 4744.64, '建築、電気、空調、管、外構', 27840000, 25050000, 'M社', '・入札結果のみ（内訳不明）', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2019年', '9月', '2期-6', 'G警察暑庁舎外構工事【RIBC復元】', 'G地内', 4744.64, '建築、電気、空調、管、エレベーター', 38520000, 38500000, 'S社', '・RIBC内訳のため、RIBC単価は仮単価', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO construction_contract (cc_dc_id, cc_et_id, estimate_year, estimate_month, construction_period, project_name, site_address, site_area, separete_construction, planned_price, contract_price, contractor_name, remarks_section, blueprint_address, cc_created_at, cc_updated_at, cc_latest_editor)
VALUES (2, 10, '2020年', '3月', '3期', 'G警察署環境整備等工事【RIBC復元】', 'G地内', 4744.64, '無し', 149800000, 135950000, 'S社', '・RIBC内訳のため、RIBC単価は仮単価\r\n・解体建物面積　内部面積参考1358㎡　17,975円/床面積', '決まり次第更新', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');

/** 22.工事契約テーブル */
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (1, 1100, 446400000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (1, 1110, 44640000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (1, 1120, 491040000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1010, 7869945465, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1020, 1173200155, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1030, 1407556595, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1040, 164101900, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1050, 10614804115, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1060, 724062762, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1070, 638300787, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1080, 1002832336, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1090, 2365195885, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1100, 12980000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1110, 1298000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (2, 1120, 14278000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1010, 15374959, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1020, 369150, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1030, 1896006, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1050, 17640115, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1060, 3972667, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1090, 9819885, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1100, 27460000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1110, 2196800, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (3, 1120, 29656800, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1010, 732113706, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1050, 732113706, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1060, 41013562, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1090, 186886294, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1100, 919000000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1110, 73520000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (4, 1120, 992520000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1010, 28990916, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1050, 28990916, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1060, 1036284, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1090, 9199084, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1100, 38190000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1110, 3819000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (9, 1120, 42009000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1010, 108577496, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1020, 2397380, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1030, 482150, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1050, 111457026, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1060, 8205342, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1070, 12051603, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1080, 16786029, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1090, 37042974, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1100, 148500000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1110, 14850000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');
INSERT INTO breakdown_co (bco_cc_id, bco_co_id, bco_price, bco_created_at, bco_updated_at, bco_latest_editor)
VALUES (10, 1120, 163350000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '775');





