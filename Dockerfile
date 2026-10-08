# Get a mini Linux operating system
FROM ubuntu:22.04

# Make a folder inside it called /app
WORKDIR /app

# Copy your single embedded Godot server file into that folder
COPY server.x86_64 .

# Give Linux permission to run it
RUN chmod +x server.x86_64

# Start the game server
CMD ["./server.x86_64", "--headless"]