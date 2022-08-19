FROM python:3.10-slim

WORKDIR /usr/src/app

RUN pip install antsichaut

CMD [ "antsichaut" ]

