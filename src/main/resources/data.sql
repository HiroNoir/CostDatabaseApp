
/** 11.従業員テーブル */
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, role)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '浩明', '山本', '$2a$10$KnfWut5vjLSI1RPlss6xZuukP9NFk3AM/13tS14kdVc1Cs8UHNnue', 'ADMIN');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, role)
VALUES ('TestEditor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '編集者', 'テスト', '$2a$10$z3pHxdzG752sSKejkOc9nuzhU.gBjtPf4hh5dJ/Vuz49kHHwDu5Le', 'EDITOR');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, role)
VALUES ('TestUser', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'ユーザー', 'テスト', '$2a$10$xL1oADCQD39UQ0JLVQRyBu/UyEyx77iYzWn/.7lk1fRFbTmm8YswW', 'GENERAL');

/** 21.設計契約テーブル */
INSERT INTO design_contract (dc_latest_editor, dc_created_at, dc_updated_at, contract_number, contract_name, customer_name)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'X2024-001', 'T再開発事業に係る施設建築物実施設計等業務', 'T市街地再開発組合');

INSERT INTO design_contract (dc_latest_editor, dc_created_at, dc_updated_at, contract_number, contract_name, customer_name)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'X2024-002', 'G察署庁舎実施設計', 'A警察本部');