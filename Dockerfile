FROM python:3.9-slim
WORKDIR /app
COPY health_analyzer.py .
COPY health_log.txt .
CMD ["python3", "health_analyzer.py"]