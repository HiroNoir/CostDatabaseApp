
/** 12.編集者テーブル */
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password)
VALUES ('775', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '浩明', '山本', 'yamahiro');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password)
VALUES ('TestEditor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '編集者', 'テスト', 'editorpass');
INSERT INTO employee (code, created_at, updated_at, first_name, last_name, password)
VALUES ('TestUser', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'ユーザー', 'テスト', 'generalpass');

-- 認証テーブルへのダミーデータの追加
INSERT INTO authentications (username, password, authority, displayname)
VALUES ('admin', '$2a$10$aooCfDRl4Bv9ujMvh0UKZOfgE5dXLIlt1y2HQ4SftN7T8pA.QnhIi', 'ADMIN', '管理太郎');
INSERT INTO authentications (username, password, authority, displayname)
VALUES ('user', '$2a$10$/jar9xXQ6lrnVjLvLGv5BepFkLnGIO49RrGx42p2i.1hQt1BZ/7E2', 'USER', '一般花子');