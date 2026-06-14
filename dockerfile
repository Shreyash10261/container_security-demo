FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install flask

RUN useradd -m appuser

USER appuser

EXPOSE 5000

CMD ["python","app.py"]