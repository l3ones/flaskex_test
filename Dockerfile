FROM python:3.8-slim-buster
ENV FLASK_APP app.py
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
