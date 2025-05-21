lint-frontend:
	make -C my-slack lint

install:
	npm ci && npm ci --prefix my-slack

start-frontend:
	make -C my-slack start

start-backend:
	npx start-server -s ./my-slack/dist

start:
	make start-backend

develop:
	make start-backend & make start-frontend

build:
	rm -rf my-slack/dist
	npm run build

