lint:
	poetry run flake8

install:
	poetry install

PORT ?= 8000
start:
# python manage.py runserver
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) task_manager.wsgi

migrate:
	poetry run python3 manage.py makemigrations
	poetry run python3 manage.py migrate