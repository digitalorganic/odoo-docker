

# docker build -f Dockerfile.odoo.dremio . --build-arg ODOO_VERSION=15.0 -t digitalorganic/odoo:15.0-odbc
# docker build -f Dockerfile.odoo.dremio . --build-arg ODOO_VERSION=14.0 -t digitalorganic/odoo:14.0-odbc

# docker push digitalorganic/odoo:15.0-odbc
# docker push digitalorganic/odoo:14.0-odbc
# for ODOO_VERSION in 12.0 13.0 14.0 15.0

for ODOO_VERSION in 16.0
do

docker pull odoo:$ODOO_VERSION

docker build -f Dockerfile.odoo.dremio . --build-arg ODOO_VERSION=$ODOO_VERSION -t digitalorganic/odoo:$ODOO_VERSION-odbc --no-cache
docker push digitalorganic/odoo:$ODOO_VERSION-odbc


done
