FROM python:3.10.6-alpine

# Install package manager
RUN pip install poetry

# Make main directory and copy project
RUN mkdir -p /project
WORKDIR /project
COPY . /project

# Install dependencies
RUN poetry install

# Expose and run server
EXPOSE 80
CMD ["build/entrypoint.sh"]
