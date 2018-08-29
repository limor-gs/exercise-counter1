FROM python:latest

WORKDIR /usr/local/bin

COPY counter-service.py .

EXPOSE 80

CMD ["python", "./counter-service.py"]
