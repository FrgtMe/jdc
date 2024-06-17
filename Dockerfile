# Use the latest Alpine Linux image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Install necessary packages
RUN apk add --no-cache \
    bash \
    curl \
    git \
    python3.10 \
    py3.10-pip \
    chromium \
    chromium-chromedriver

# Set the default Python version to 3.10
RUN ln -sf /usr/bin/python3.10 /usr/bin/python3
RUN ln -sf /usr/bin/pip3.10 /usr/bin/pip3

# Copy the application code
COPY . .

# Set the entry point
ENTRYPOINT ["bash", "run.sh"]
