#!/bin/sh
sed -i "s/<REFRESH_TOKEN>/${REFRESH_TOKEN}/" ./config.json
gunicorn app:app -b "0.0.0.0:${PORT:-5000}"

exec "$@"