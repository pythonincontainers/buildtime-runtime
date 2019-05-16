#! /bin/bash

# Install Python Libraries from requirements.txt
pip install -r requirements.txt

# Create /data directory to store sqlite3 data files
mkdir -p /data

# Initialize Database
python manage.py migrate

# Create 'admin' User
/bin/bash create-admin.sh

python manage.py runserver 0.0.0.0:8000
