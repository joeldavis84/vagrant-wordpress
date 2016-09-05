CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'%' IDENTIFIED BY 'newpass';
GRANT ALL on wordpress.* to 'wordpress'@'%';
FLUSH PRIVILEGES;
