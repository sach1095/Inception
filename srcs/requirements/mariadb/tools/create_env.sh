sed -i 's/MYSQL_DATABASE/'${MYSQL_DATABASE}'/g' create_db.sql && sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' create_db.sql && sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' create_db.sql\
&& sed -i 's/MYSQL_PASSWORD/'${MYSQL_PASSWORD}'/g' create_db.sql && sed -i 's/MYSQL_ROOT_PASSWORD/'${MYSQL_ROOT_PASSWORD}'/g' create_db.sql
