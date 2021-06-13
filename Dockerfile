# Container image that runs your code
FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD [ "python", "app.py"]
