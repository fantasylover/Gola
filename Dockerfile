# Use official Golang image as base
FROM golang:1.20

# Set working directory
WORKDIR /app

# Copy go.mod and go.sum (if any) for dependency management
COPY go.mod go.sum ./

# Download dependencies
RUN go mod tidy

# Copy the rest of the code
COPY . .

# Build the application
RUN go build -o main

# Command to run the executable
CMD ["./main"]
