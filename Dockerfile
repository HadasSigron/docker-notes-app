FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV NOTES_FILE=/data/notes.json
ENV APP_NAME="Docker Notes App"

EXPOSE 5000

CMD ["python", "app.py"]


