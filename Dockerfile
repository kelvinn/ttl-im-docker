FROM alpine:3.9
ENV PYTHONUNBUFFERED 1
RUN apk add py2-pip openssl-dev gcc make python2 python2-dev musl-dev libffi-dev
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
CMD ["./run.sh"]