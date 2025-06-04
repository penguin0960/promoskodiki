#!/bin/bash
git fetch
git reset --hard
git pull
./venv/bin/pip install -r ./requirements.txt
./venv/bin/python3 ./manage.py migrate
fuser -k 80/tcp
./venv/bin/python3 ./manage.py runserver 31.128.41.25:80 &