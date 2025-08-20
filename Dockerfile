FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ../app
RUN pip install --no-cache-dir -r ../app/requirements.txt

COPY ./app ../app/app
EXPOSE 8080

CMD ["python", "app/main.py"]