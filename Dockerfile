FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/PyungkangHong094/fdfam.git

WORKDIR /home/fdhomepage/

RUN pip install -r  requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

