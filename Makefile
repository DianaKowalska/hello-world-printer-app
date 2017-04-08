.PHONY: 	test deps

deps:
			pip install -r requirements.txt; \
			pip install -r test_requirements.txt

#pip install flake 8
lint:
		flake8 hello_world test

test:
		PYTHONPATH=. py.test --verbose -s

docker_build:
			 	docker build -t hello_wrold-printer .
docker_run: docker_build
					docker run \
						-- name hello_wrold-printer-dev \
						-p 5000:500\
						-d hello_wrold-printer
