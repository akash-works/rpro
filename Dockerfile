FROM python:3.10.5
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /rpro
COPY requirements.txt /rpro/
RUN python3 -m pip install -r requirements.txt
COPY . /rpro/
