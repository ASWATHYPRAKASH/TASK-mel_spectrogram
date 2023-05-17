FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install python3-dev -y
RUN apt-get install python3-pip -y
ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get install ffmpeg -y
WORKDIR /usr/app
COPY . .
RUN pip install -r requirements.txt
CMD ["python3","app.py"]