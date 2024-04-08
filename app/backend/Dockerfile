FROM debian:latest

RUN apt-get update 
RUN apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip python3-mysqldb pipx

RUN pip install --break-system-packages flask==2.1.3 Werkzeug==2.2.2
RUN pip install --break-system-packages flask-mysql

COPY app.py .

ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]
