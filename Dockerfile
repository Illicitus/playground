FROM python:3.10.6

# Install package manager
RUN pip install poetry uvicorn

# Make main directory and copy project
RUN mkdir -p /project
WORKDIR /project
COPY . /project

# Install dependencies
RUN poetry install --without dev

# Expose and run server
EXPOSE 80
CMD ["build/entrypoint.sh"]
