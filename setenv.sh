JAVA_OPTS="-Xms128m -Xmx1024m -XX:MaxPermSize=256m -Ddb.host=${DB_HOST:-negotiator-db} -Ddb.name=${DB_NAME:-negotiator} -Ddb.user=${DB_USER:-negotiator} -Ddb.password=${DB_PASSWORD:-negotiator} -Ddb.port=${DB_PORT:-5432} "

