FROM ubuntu:latest
RUN apt update
RUN apt install -y git
RUN apt install -y python3-pip
RUN pip3 install flask
RUN git clone https://github.com/HSE-NN-SE/final-lab-tndumarevskaya.git
RUN cd final-lab-tndumarevskaya
ENV FLASK_APP=final-lab-tndumarevskaya/js_example
CMD python3 -m flask run --host=0.0.0.0
