FROM python:3.10-slim
WORKDIR /app 
COPY . .
RUN pip install -r requirements.txt 
CMD ["sh","-c","python3 etl.py && python3 test_etl.py"]