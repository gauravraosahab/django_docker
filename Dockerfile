FROM python:3.6
ENV PYTHONUNBUFFERED 1
WORKDIR /
ADD . /
RUN pip install -r requirements.txt

EXPOSE 8001
ENV DJANGO_SETTINGS_MODULE=test_docker_django.settings

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]