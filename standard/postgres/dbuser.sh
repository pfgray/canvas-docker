#!/bin/sh

gosu postgres postgres --single <<- EOSQL
    CREATE USER $DBUSER WITH CREATEDB;
    ALTER USER $DBUSER WITH PASSWORD '$DBPASS';
EOSQL
