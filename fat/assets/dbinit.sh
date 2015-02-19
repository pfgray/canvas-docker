#!/bin/bash
set -e

sudo -u postgres psql <<< "CREATE USER canvas WITH SUPERUSER;"
#sudo -u postgres psql <<< "ALTER USER canvas WITH PASSWORD 'canvas';"
sudo -u postgres psql <<< "CREATE DATABASE canvas_$RAILS_ENV OWNER canvas"
sudo -u postgres psql <<< "CREATE DATABASE canvas_queue_$RAILS_ENV OWNER canvas"

export CANVAS_LMS_ADMIN_EMAIL="canvas@example.edu"
export CANVAS_LMS_ADMIN_PASSWORD="canvas"
export CANVAS_LMS_ACCOUNT_NAME="Canvas Dev"
export CANVAS_LMS_STATS_COLLECTION="opt_out"

cd /opt/canvas-lms \
    && bundle exec rake db:initial_setup

