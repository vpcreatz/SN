FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /SN
WORKDIR /SN
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
