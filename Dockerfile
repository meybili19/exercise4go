# Use a Go base image
FROM golang:1.20

# Set the working directory
WORKDIR /app

# Copy the source code to the container
COPY . .

# Initialize the Go module
RUN go mod tidy

# Build the application
RUN go build -o main .

# Expose the port on which the app will run
EXPOSE 8585

# Run the application
CMD ["./main"]