FROM python:3.6
ADD app.py config.py /opt/app/
WORKDIR /opt/app
ARG CONTAINER_NAME
ENV CN=$CONTAINER_NAME
RUN pip3 install flask redis
CMD ["python", "/opt/app/app.py"]
