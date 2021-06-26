PIPENV=pipenv run

build:
	${PIPENV} mkdocs build

serve:
	${PIPENV} mkdocs serve

deploy:
	${PIPENV} mkdocs gh-deploy
