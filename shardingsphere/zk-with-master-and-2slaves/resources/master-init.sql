CREATE USER 'repl'@'%' IDENTIFIED WITH mysql_native_password BY 'root@12345';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';
flush privileges;
