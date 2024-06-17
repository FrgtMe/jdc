# Use the latest Alpine Linux image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Install necessary packages
RUN apk add --no-cache \
    bash \
    curl \
    git \
    python3 \
    py3-pip \
    chromium \
    chromium-chromedriver

# Copy the application code
COPY . .

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Set the entry point
ENTRYPOINT ["bash", "run.sh"]
