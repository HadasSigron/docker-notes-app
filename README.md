# Docker Notes App

A simple Flask-based note-taking application containerized with Docker.

## Build Instructions

1. Clone the repository:  
`git clone git@github.com:HadasSigron/docker-notes-app.git

2. Build the Docker image:  
`docker build -t docker-notes-app .`

## Run Instructions

1. Run the container with a volume mount for persistent data:  
`docker run -d -p 5000:5000 -v /path/to/notes:/data --name notes-app docker-notes-app`

2. Access the application at:  
`http://localhost:5000`

## Environment Variables

- `NOTES_FILE`: Path to the JSON file storing notes (default: `/data/notes.json`)
- `APP_NAME`: Custom application name displayed in the UI (default: "My Notes App")
