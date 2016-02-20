FROM werwolfby/armhf-alpine-python
MAINTAINER Alexander Puzynia <werwolf.by@gmail.com>

COPY monitorrent /var/www/monitorrent
RUN pip install -r /var/www/monitorrent/requirements.txt

WORKDIR /var/www/monitorrent

EXPOSE 5000

CMD ["python", "server.py"]
