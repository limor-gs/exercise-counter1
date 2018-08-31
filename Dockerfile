FROM python:3.6

COPY app.py config.py ./

EXPOSE 80

RUN pip3 install flask redis

VOLUME /opt

CMD ["python", "./counter-service.py"]
