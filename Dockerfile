FROM python:3.9-slim

RUN pip install --no-cache-dir flask

ENV FLASK_APP=app.py

WORKDIR /app

COPY app .

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5050"]
