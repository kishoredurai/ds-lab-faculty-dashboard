FROM python:3.9.2
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code

RUN pip install -r requirements.txt

COPY . /code/

EXPOSE 8000

# FROM python:3.9.2-alpine3.13


RUN python manage.py collectstatic --noinput
# CMD python manage.py makemigrations core
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]