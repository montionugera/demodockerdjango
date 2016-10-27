FROM python:3.5
RUN pip install django==1.10.2
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "manage.py","runserver","0.0.0.0:8000"]
