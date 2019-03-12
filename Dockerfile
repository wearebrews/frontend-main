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
RUN pip3 install gunicorn

EXPOSE 80
ENV DJANGO_PORT 80
#Run django app
CMD ["gunicorn", "wearebrews.wsgi", "--bind", "0.0.0.0:80"]