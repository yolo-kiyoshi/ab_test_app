FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1

EXPOSE 8501

WORKDIR /app

RUN pip install poetry

COPY poetry.lock pyproject.toml ./

RUN poetry config virtualenvs.create false \
  && poetry install
