NODE_ENV ?= production
APP_NAME ?= boiler
DEBUG ?= boiler*

all: clean install build revision

test:
	@NODE_ENV=$(NODE_ENV) npm run test

test-watch:
	@NODE_ENV=$(NODE_ENV) npm run test-watch

clean:
	@echo "Empty './public' dir"
	@rm -rf ./public/*
	@echo "Removing './tmp' dir"
	@rm -rf ./tmp

purge: clean
	@echo "Removing './node_modules' dir"
	@rm -rf ./node_modules

build:
	@NODE_ENV=$(NODE_ENV) npm run build

revision:
	@NODE_ENV=$(NODE_ENV) npm run revision

dev:
	@NODE_ENV=development DEBUG_COLORS=y APP_NAME=$(APP_NAME) DEBUG=$(DEBUG) npm run dev

run:
	@NODE_ENV=$(NODE_ENV) APP_NAME=$(APP_NAME) npm start

install:
	@npm install

update:
	@npm update

deploy:
	git push git@app.example.com:~/express-boilerplate master

deploy-dev:
	git push git@app.example.com:~/express-boilerplate dev

.PHONY: all lint test clean purge build revision dev run install update deploy
