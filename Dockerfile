FROM python:2.7.15-jessie

WORKDIR /app

ADD ./source /app
RUN apt-get update
RUN apt-get install -y libmysqlclient-dev
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8000
ENV NAME Asker

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
