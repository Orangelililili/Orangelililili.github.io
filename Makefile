SHELL := /bin/bash

.PHONY: help preview preview-build stop logs clean preview-local build-js

help:
	@echo "Targets:"
	@echo "  make preview        # Docker: build (if needed) and serve on http://localhost:4000"
	@echo "  make preview-build  # Docker: force rebuild and serve"
	@echo "  make stop           # Stop docker preview"
	@echo "  make logs           # Follow docker logs"
	@echo "  make clean          # Remove docker containers/images for this project"
	@echo "  make preview-local  # Local Ruby: bundle exec jekyll serve (requires Ruby toolchain)"

preview:
	docker-compose up

preview-build:
	docker-compose up --build

stop:
	docker-compose down

logs:
	docker-compose logs -f --tail=200

clean:
	docker-compose down --rmi local --volumes --remove-orphans

build-js:
	npm install
	npm run build:js

preview-local:
	mkdir -p vendor/bundle
	bundle config set --local path "vendor/bundle"
	bundle install
	$(MAKE) build-js
	bundle exec jekyll serve -H 0.0.0.0 -w --config _config.yml,_config_docker.yml
