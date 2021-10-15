install:
	npm install

test:
	npm test
scan:
	npm audit fix --audit-level=critical --force
lint:
	# Lint js
	npm run lint
	# Lint dockerfile
	hadolint --ignore DL3042 Dockerfile

all: install test lint