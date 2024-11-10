# Use a Go base image
FROM golang:1.20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the source code to the container
COPY . .

# Compile the Go archive
RUN go build -o main .

# Expose the port where the server will run
EXPOSE 8585

# Run the application
CMD ["./main"]