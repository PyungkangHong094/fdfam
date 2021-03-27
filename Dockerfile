FROM python:3.9.0

WORKDIR /home/

RUN echo "django_image_fd4"

RUN git clone https://github.com/PyungkangHong094/fdfam.git

WORKDIR /home/fdfam/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=pxrrxsbks&-*4@)f4tjss*okko#evf_p9@8&4@!0$lj9wjxpp7" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

