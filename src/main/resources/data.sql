
/** 11.従業員テーブル */
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, role)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '浩明', '山本', '$2a$10$KnfWut5vjLSI1RPlss6xZuukP9NFk3AM/13tS14kdVc1Cs8UHNnue', 'ADMIN');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, role)
VALUES ('TestEditor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '編集者', 'テスト', '$2a$10$z3pHxdzG752sSKejkOc9nuzhU.gBjtPf4hh5dJ/Vuz49kHHwDu5Le', 'EDITOR');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, role)
VALUES ('TestUser', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'ユーザー', 'テスト', '$2a$10$xL1oADCQD39UQ0JLVQRyBu/UyEyx77iYzWn/.7lk1fRFbTmm8YswW', 'GENERAL');