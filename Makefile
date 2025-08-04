start:
	PYTHONPATH=./ poetry run uvicorn fastapi_app.main:app --reload 

test:
	PYTHONPATH=src poetry run pytest --cov=fastapi_app --cov-report=xml --cov-fail-under=95 

lint:
	poetry run codespell src/ tests/ 

check: lint test

