# Container image that runs your code
FROM alpine:3.10

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN [ "python", "app.py"]
