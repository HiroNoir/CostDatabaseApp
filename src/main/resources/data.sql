
/** 12.編集者テーブル */
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '浩明', '山本', 'yamahiro');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password)
VALUES ('TestEditor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '編集者', 'テスト', 'editorpass');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password)
VALUES ('TestUser', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'ユーザー', 'テスト', 'generalpass');