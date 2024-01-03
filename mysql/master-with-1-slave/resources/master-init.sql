CREATE USER 'repl'@'%' IDENTIFIED WITH mysql_native_password BY 'Passw0rd';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';
flush privileges;
