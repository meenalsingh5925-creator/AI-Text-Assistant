FROM python:3.11-slim
WORKDIR /app
COPY requirements_txt.py  .
RUN pip install --no-cache-dir -r requirements_txt.py
COPY app.py.py .
ENV PYTHONNUNBUFFERED=1
CMD ["python", "app.py.py"]
