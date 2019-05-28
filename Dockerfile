FROM ubuntu:latest
MAINTAINER Jorge Cedi "cedi.moc@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python3 python3-pip python3-dev build-essential

COPY requirements.txt /code/requirements.txt
RUN pip3 install -r /code/requirements.txt

ADD . /code
WORKDIR /code
RUN chmod +x app.py
RUN chmod +x test.py

#ENTRYPOINT ["python3"]
CMD ["python3", "app.py"]

