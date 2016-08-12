include Makefile.cfg

init:
	pip install -r requirements.txt

test:
	nosetests tests

clean:
	rm -rf build dist *.egg-info

build:
	python setup.py bdist_wheel

create-bucket:
	aws s3 mb s3://${s3_bucket}
	aws s3api put-bucket-versioning --bucket ${s3_bucket} --versioning-configuration Status=Enabled

publish:
	aws s3api put-object \
		--bucket ${s3_bucket} \
		--key lambda.zip \
		--body dist/shmenkins-0.0.1-py2-none-any.whl
