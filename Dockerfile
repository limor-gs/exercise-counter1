FROM python:3.6
ADD app.py config.py /opt/app/
WORKDIR /opt/app
EXPOSE 80
ENV CONTAINER_NAME=counter-dev
RUN pip3 install flask redis
CMD ["python", "/opt/app/app.py"]
