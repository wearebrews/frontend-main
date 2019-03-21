#!/bin/sh

#Collect static files
python manage.py collectstatic

#Start gunicorn server
gunicorn wearebrews.wsgi --bind unix:/tmp/gunicorn.sock