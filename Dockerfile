FROM python:3
WORKDIR /app
COPY . .
RUN pip install flask
ENV FLASK_APP "js_example"
CMD python -m flask run -h localhost
