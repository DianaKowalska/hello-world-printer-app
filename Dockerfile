FROM python:2.7
WORKDIR /tmp

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /usr/src/hello_wrold-printer/
ADD hello_world/ /usr/src/hello_wrold-printer/hello_worl/

ADD main.py /usr/src/hello_wrold-printer/
RUN ls /usr/src/hello_wrold-printer/

CMD PYTHONPATH=$PYTHONPATH:/usr/src/hello_wrold-printer \
  FLASK_APP=hello_world flask run --host=0.0.0.0
