service mysql start

mysql -u root <<EOF
    CREATE DATABASE wordpress;
    CREATE USER 'admin'@'localhost' IDENTIFIED BY 'MY_PASS';
    GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'MY_PASS';
    FLUSH PRIVILEGES;
EOF
