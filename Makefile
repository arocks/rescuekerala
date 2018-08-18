help:
	@echo "Usage:"
	@echo "    make help        show this message"
	@echo "    make setup       create virtual environment and install dependencies"
	@echo "    make activate    enter virtual environment"
	@echo "    make test        run tests"
	@echo "    exit             leave virtual environment"

setup:
	pip install pipenv
	pipenv install --dev

activate:
	pipenv shell

test:
	pipenv run python manage.py test --settings=floodrelief.test_settings

.PHONY: help activate test
