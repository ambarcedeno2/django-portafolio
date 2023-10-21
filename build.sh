#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
DJANGO_SUPERUSER_PASSWORD=1234 python manage.py createsuperuser --no-input --username=ambar1  --email=ambar@example.com

python manage.py collectstatic --no-input
python manage.py migrate 