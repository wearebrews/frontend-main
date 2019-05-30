#!/bin/sh

#Collect static files
python manage.py collectstatic

python manage.py migrate

#Check if there are migration changes
python manage.py makemigrations

#Start gunicorn server
gunicorn wearebrews.wsgi --bind unix:/tmp/gunicorn.sock