FROM python:3

WORKDIR /app

COPY requirements.txt .

RUN  pip install -r requirements.txt 

COPY main.py .
EXPOSE 8000

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]