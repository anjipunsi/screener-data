#!/bin/sh

# Set Postgres connection details
PG_HOST=localhost
PG_PORT=5432
PG_DB=concourse
PG_USER=concourse_user
PG_PASSWORD=concourse_pass

# Scrap Excel data and insert into Postgres
psql -h $PG_HOST -p $PG_PORT -d $PG_DB -U $PG_USER -W $PG_PASSWORD <<EOF
  CREATE TABLE IF NOT EXISTS reliance_data (
    id SERIAL PRIMARY KEY,
    column1 VARCHAR(255),
    column2 VARCHAR(255)
  );

  COPY reliance_data (column1, column2)
  FROM 'reliance_data.xlsx'
  DELIMITER ','
  CSV HEADER;
EOF
