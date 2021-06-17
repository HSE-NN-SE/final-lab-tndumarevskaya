FROM ubuntu:latest
RUN apt-get update && apt-get -y upgrade
RUN apt install -y python3-pip
RUN pip3 install flask
RUN apt install -y git
RUN git clone https://github.com/HSE-NN-SE/final-lab-tndumarevskaya.git && ls && cd final-lab-tndumarevskaya
ENV FLASK_APP=final-lab-tndumarevskaya/js_example
CMD python3 -m flask run -h localhost 
