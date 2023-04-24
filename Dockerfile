FROM python:3.11
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /rpro
COPY requirements.txt /rpro/requirements.txt
RUN python3 -m pip install -r requirements.txt
COPY . /rpro/
CMD python manage.py runserver 0.0.0.0:8000