FROM python:3.6
ADD app.py config.py /opt/app/
WORKDIR /opt/app
EXPOSE 80
ARG CONTAINER_NAME
ENV CONTAINER_NAME=$CONTAINER_NAME
RUN pip3 install flask redis
CMD ["python", "/opt/app/app.py"]
