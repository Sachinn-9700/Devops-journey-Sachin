FROM python:3.11-alpine

WORKDIR /src
COPY . .

RUN pip install flask

EXPOSE 4000
CMD ["python", "app.py"]
