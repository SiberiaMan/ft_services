#mysql_install_db --user=root --ldata=/var/lib/mysql
#mysqld -u root & sleep 1
#mysql -u root --execute="CREATE DATABASE wordpress;"
#mysql -u root --execute="CREATE USER 'mysql'@'%' IDENTIFIED BY 'mysql'; GRANT ALL PRIVILEGES ON wordpress.* TO 'mysql'@'%' WITH GRANT OPTION; USE wordpress; FLUSH PRIVILEGES;"
#USE wordpress перед FLUSH PRIV*
#mysql wordpress -u root --password= < my_db.sql
#/usr/bin/mysqld_safe --datadir=/var/lib/mysql
#/usr/bin/mysqld --console --init_file=/var/lib/mysql
#while true
#do
#	sleep 1;
#done
openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql < create_db.sql
mysql -u root wordpress < my_db.sql
rc-service mariadb stop
/usr/bin/mysqld_safe  --datadir="/var/lib/mysql"
