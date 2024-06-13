CREATE DATABASE cost_database_app CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
/* CREATE USER 'repuser'@'localhost' IDENTIFIED BY 'reppass'; */
GRANT ALL PRIVILEGES ON cost_database_app.* to 'repuser'@'localhost';