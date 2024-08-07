install:
	poetry install

update:
	poetry update

build:
	install migrate

dev:
	poetry run python manage.py runserver

PORT ?= 8000
start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) task_manager.wsgi

shell:
	$ ./manage.py shell

test:
	poetry run python3 manage.py test

lint:
	poetry run flake8 task_manager

migrate:
	poetry run python manage.py makemigrations
	poetry run python manage.py migrate

trans-messages:
	python manage.py makemessages -l ru

compile-trans:
	python manage.py compilemessages

