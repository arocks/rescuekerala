help:
	@echo "Usage:"
	@echo "    make help        show this message"
	@echo "    make setup       create virtual environment and install dependencies"
	@echo "    make activate    enter virtual environment"
	@echo "    exit             leave virtual environment"

setup:
	pip install pipenv
	pipenv install --dev --three

activate:
	pipenv shell -c

.PHONY: help activate test
