FROM centos/s2i-base-centos7

EXPOSE 8080

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm && yum -y update && yum -y install python36u python36u-libs python36u-devel python36u-pip python-pip && pip install --upgrade pip && pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
