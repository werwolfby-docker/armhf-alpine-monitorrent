FROM python:alpine
MAINTAINER Alexander Puzynia <werwolf.by@gmail.com>

COPY monitorrent/requirements.txt /var/www/monitorrent/requirements.txt
RUN apk add --no-cache build-base && \
    pip install -r /var/www/monitorrent/requirements.txt && \
    apk del build-base
RUN pip install PySocks
COPY monitorrent /var/www/monitorrent

WORKDIR /var/www/monitorrent

EXPOSE 6687

CMD ["python", "server.py"]
