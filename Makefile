install:
	npm install
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x /bin/hadolint

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