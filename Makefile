# Comando para executar o servidor uvicorn
run:
	@uvicorn workout_api.main:app --reload

# Comando para criar migrações usando Alembic
create-migrations:
	@set PYTHONPATH=%PYTHONPATH%;%cd% & alembic revision --autogenerate -m $(d)

# Comando para executar migrações usando Alembic
run-migrations:
	@set PYTHONPATH=%PYTHONPATH%;%cd% & alembic upgrade head