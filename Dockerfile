FROM python:3.6

#Create and use workdir
RUN mkdir -p /usr/app
WORKDIR /usr/app

#Copy sources
COPY ./ ./

#Disable bufferent output in python
ENV PYTHONUNBUFFERED 1

#Install dependencies
RUN pip3 install -r requirements.txt

#Run django app
ENTRYPOINT [ "python3" ]
CMD ["./main.py"]
