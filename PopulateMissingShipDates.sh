#!/bin/bash

# MySQL database credentials
db_user="root"
db_password="Eliana@3595"
db_name="shellsql"
echo "Done1"
# Table and column information
table_name="orders"
date_column="order_date"
echo "Dione2"
# Connect to the MySQL server and update the date column as null
mysql -u "$db_user" -p"$db_password" -D "$db_name" <<EOF
UPDATE $table_name SET $date_column = NULL;
EOF

echo "Date has been updated to null in the $table_name table of the $db_name database."