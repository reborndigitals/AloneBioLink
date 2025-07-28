FROM nikolaik/python-nodejs:python3.10-nodejs20

RUN apt-get update -y && apt-get upgrade -y

RUN pip3 install -U pip

COPY . /app/
WORKDIR /app/
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt

CMD python3 alone.py


