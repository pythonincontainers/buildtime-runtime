#! /bin/bash

# Create /data directory to store sqlite3 data files
mkdir /data

# Initialize Database
python manage.py migrate

# Create 'admin' User
/bin/bash create-admin.sh

python manage.py runserver 0.0.0.0:8000
