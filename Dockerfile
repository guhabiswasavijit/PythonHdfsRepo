FROM python:3.11.0a3-alpine3.15
LABEL maintainer="Avijit GuhaBiswas <guhabiswas.avijit@gmail.com>"
LABEL name="admin/python-client-hdfs"

RUN apk add bash\
    && adduser --disabled-password admin \
	&& echo 'admin ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
	

USER admin
WORKDIR /home/admin/PythonProjects
RUN pip install hdfs
	
ENV SHELL=/bin/bash \
	USER=admin
COPY src/hdfsReadFile.py hdfsReadFile.py


CMD ["python","hdfsReadFile.py"]