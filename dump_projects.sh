#!/bin/bash

pg_dump -f asemakaava-projekti.sql --table qgis_projects -d asemaqaava_dev -U dev_admin -h qaava-test-db.ctcspesmxrh1.eu-central-1.rds.amazonaws.com -p 5432 -W --column-inserts --no-owner --clean

pg_dump -f yleiskaava-projekti.sql --table qgis_projects -d qaava_dev -U dev_admin -h qaava-test-db.ctcspesmxrh1.eu-central-1.rds.amazonaws.com -p 5432 -W --column-inserts --no-owner --clean

sed -i '/SET default_table_access_method = heap;/d' asemakaava-projekti.sql
sed -i '/SET default_table_access_method = heap;/d' yleiskaava-projekti.sql

