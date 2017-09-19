FROM werwolfby/armhf-alpine-python
MAINTAINER Alexander Puzynia <werwolf.by@gmail.com>

COPY monitorrent/requirements.txt /var/www/monitorrent/requirements.txt
RUN pip install -r /var/www/monitorrent/requirements.txt
RUN pip install PySocks
COPY monitorrent /var/www/monitorrent

WORKDIR /var/www/monitorrent

EXPOSE 6687

CMD ["python", "server.py"]
