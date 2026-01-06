


# for ODOO_VERSION in 12.0 13.0 14.0 15.0
for ODOO_VERSION in 19.0
do
docker build -f Dockerfile.qweb.thai . --build-arg ODOO_VERSION=$ODOO_VERSION -t digitalorganic/odoo:$ODOO_VERSION-qweb-thai
docker push digitalorganic/odoo:$ODOO_VERSION-qweb-thai


done
