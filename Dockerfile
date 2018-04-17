FROM python:2-slim

ADD web/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
ADD web /app
WORKDIR /app

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000
