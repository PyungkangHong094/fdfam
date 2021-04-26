FROM python:3.9.0

WORKDIR /home/

RUN echo "django_image_fd01"

RUN git clone https://github.com/PyungkangHong094/fdfam.git

WORKDIR /home/fdfam/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=fdhomepage.settings.deploy && python manage.py migrate --settings=fdhomepage.settings.deploy && gunicorn fdhomepage.wsgi --env DJANGO_SETTINGS_MODULE=fdhomepage.settings.deploy --bind 0.0.0.0:8000"]
