FROM ubuntu
RUN apt update && apt upgrade
RUN apt-get install -y python
RUN apt install -y python3-pip
COPY javascript-ajax-example .
RUN pip install flask
RUN apt-get install -y python3-venv
RUN puthon3 -m venv venv
RUN . venv/bin/activate
RUN pip install -e .
ENV FLASK_APP=js_example
EXPOSE 5000
CMD python3 -m flask run -h 0.0.0.0
