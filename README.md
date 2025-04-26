# Docker Notes App

A simple Flask-based note-taking application containerized with Docker.

## Build Instructions

1. Clone the repository:
```bash
git clone git@github.com:HadasSigron/docker-notes-app.git
cd docker-notes-app
```

2. Build the Docker image:
```bash
docker build -t docker-notes-app .
```

## Run Instructions

1. Run the container with a volume mount for persistent data:
```bash
docker run -d -p 5000:5000 -v /path/to/notes:/data --name notes-app docker-notes-app
```

2. Access the application at:
```bash
http://localhost:5000
```

## Environment Variables

- `NOTES_FILE`: Path to the JSON file storing notes (default: `/data/notes.json`)
- `APP_NAME`: Custom application name displayed in the UI (default: "Docker Notes App")

## Health Check

The container has a built-in health check that pings the `/health` endpoint every 30 seconds to verify that the application is running correctly.

