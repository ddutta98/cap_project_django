FROM python:3.7.3

ADD . /var/www/cpproject1

WORKDIR /var/www/cpproject1

RUN pip3 install -r requirements.txt

EXPOSE 8000

RUN ./manage.py makemigrations

RUN ./manage.py migrate

CMD ./manage.py runserver 0.0.0.0:8000
