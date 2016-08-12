init:
	pip install -r requirements.txt

test:
	nosetests tests

clean:
	rm -rf build dist *.egg-info

build:
	python setup.py bdist_wheel
