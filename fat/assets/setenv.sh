#!/bin/bash

export DBUSER=${DBUSER:-"canvas"}
export DBPASS=${DBPASS:-"canvas"}
export POSTGRESQL_DATA=${POSTGRESQL_DATA:-"/var/lib/postgresql/$POSTGRES_VERSION/main"}
export POSTGRESQL_REMOTE_CONN_NETMASK=${POSTGRESQL_REMOTE_CONN_NETMASK:-"172.17.0.0/16"}

eval "$@"
