# RESTORE/IMPORT DATABASE
mysql -u root -p belajar_mysql_import < W:\learn-mysql-with-pzn\belajar_mysql.sql

# OR
> mysql -u root -p
> create database belajar_mysql_import_source
> use belajar_mysql_import_source
> source W:\learn-mysql-with-pzn\belajar_mysql.sql