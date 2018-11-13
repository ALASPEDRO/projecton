FROM centos/s2i-base-centos7

EXPOSE 8080

RUN yum -y install epel-release && yum -y pip install --upgrade pip && pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
