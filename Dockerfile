# syntax=docker/dockerfile:1
FROM python:3.10.1-alpine3.15
LABEL MAINTAINER Rupesh Kumar rupesh.kumar@accern.com
WORKDIR /code
RUN python3 -m venv code-env
RUN source code-env/bin/activate
RUN  /usr/local/bin/python -m pip install --upgrade pip sudo
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt sudo
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN  /usr/local/bin/python -m pip install --upgrade pip sudo
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt sudo
EXPOSE 5000
COPY . .
CMD ["flask", "run"]