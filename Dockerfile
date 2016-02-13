FROM frolvlad/alpine-python2
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code/
CMD ["./run.sh"]