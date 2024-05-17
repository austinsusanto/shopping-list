#!/bin/sh

# Run database migrations
python manage.py migrate

# Start the application using gunicorn
exec gunicorn shopping_list.wsgi:application --bind 0.0.0.0:$PORT --workers $WEB_CONCURRENCY
