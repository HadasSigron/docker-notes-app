FROM python:3.9-alpine AS builder
RUN apk add --no-cache build-base
COPY requirements.txt .
RUN pip install --no-cache-dir --perfix=/install -r requirements.txt
FROM python:3.9-alpine
ENV NOTES_FILE=/data/notes.json
ENV APP_NAME="Docker Notes App"
COPY --from=builder /install /usr/local
COPY app.py .
COPY templates/ templates/
VOLUME ["/data"]
EXPOSE 5000
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD curl --fail http://localhost:5000/health || exit 1
CMD ["python", "app.py"]

