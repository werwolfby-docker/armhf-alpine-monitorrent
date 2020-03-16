FROM python:alpine
MAINTAINER Alexander Puzynia <werwolf.by@gmail.com>

COPY monitorrent /var/www/monitorrent
RUN apk add --no-cache build-base && \
    pip install --no-cache-dir -r /var/www/monitorrent/requirements.txt && \
    apk del build-base && \
    pip install --no-cache-dir PySocks

WORKDIR /var/www/monitorrent

EXPOSE 6687

CMD ["python", "server.py"]
