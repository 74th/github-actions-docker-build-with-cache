FROM python:3.9

WORKDIR /app

RUN pip install poetry
COPY pyproject.toml poetry.lock ./
RUN poetry install

COPY myapp ./myapp

ENTRYPOINT [ "poetry", "run", "python" ]
CMD ["-m", "myapp"]