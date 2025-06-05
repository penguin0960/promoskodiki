#!/bin/bash
git fetch
git reset --hard
git pull
./venv/bin/pip install -r ./requirements.txt
./venv/bin/python3 ./manage.py migrate
./venv/bin/python3 ./manage.py collectstatic -y
fuser -k 8000/tcp
./venv/bin/gunicorn --workers 3 --bind 127.0.0.1:8000 promokodiki.wsgi:application &