FROM postgres:9.3.5

MAINTAINER Jay Luker <jay_luker@harvard.edu>

# add init script where postgres will auto pick up and exec
ADD ./dbuser.sh /docker-entrypoint-initdb.d/dbuser.sh
