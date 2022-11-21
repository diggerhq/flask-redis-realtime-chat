FROM python:3.11-slim

RUN mkdir /app

COPY . /app


RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
RUN chmod +x /app/start.sh

CMD  [ "/app/start.sh" ]