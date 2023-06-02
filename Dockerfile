FROM python:3.8

WORKDIR /djangoapp  

COPY requirement.txt .
RUN pip install -r requirement.txt



EXPOSE 8055

CMD [ "python3", "manage.py", "runserver","8055" ]
