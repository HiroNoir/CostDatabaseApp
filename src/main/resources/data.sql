
/** 12.編集者テーブル */
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, authority)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '浩明', '山本', 'yamahiro', 'ADMIN');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, authority)
VALUES ('TestEditor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '編集者', 'テスト', 'editorpass', 'EDITOR');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password, authority)
VALUES ('TestUser', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'ユーザー', 'テスト', 'generalpass', 'GENERAL');