install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


test:
	python -m pytest -vv test_hello.pytest

format:
	black *.pytest

lint:
	pylint --disable=R,C hello.pylint


all: install lint test