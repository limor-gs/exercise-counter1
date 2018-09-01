FROM python:3.6
ADD app.py config.py /opt/app/
WORKDIR /opt/app
EXPOSE 80
RUN pip3 install flask redis
VOLUME /opt/app
CMD ["python", "/opt/app/app.py"]
