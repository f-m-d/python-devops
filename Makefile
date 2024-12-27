install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C *.py devopslib


test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smath --cov=web tests
	python -m pytest --nbval getting_started_python.ipynb	#tests our jupyter notebook
	#python -m pytest -v tests/test_web.py #if you just want to test web




		