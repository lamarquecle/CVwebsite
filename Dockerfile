FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ../app
RUN pip install --no-cache-dir -r ../app/requirements.txt

COPY ./app ./app

EXPOSE 8080

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]


# docker build -t my-fastapi-app .
# docker run -d -p 8080:8080 --name my-fastapi-app
