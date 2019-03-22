#!/bin/sh

#Collect static files
python manage.py collectstatic

#Check if there are migration changes
python manage.py makemigrations

#Start gunicorn server
gunicorn wearebrews.wsgi --bind unix:/tmp/gunicorn.sock