FROM python:latest

WORKDIR /usr/local/bin

COPY counter-service.py .

CMD ["python", "./counter-service.py"]
