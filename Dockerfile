FROM python:3.8-slim-buster
EXPOSE 5000
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY . /app
WORKDIR /app
ENV FLASK_APP=js_example
RUN pip install -r requirements.txt
CMD python -m flask run -h 0.0.0.0
