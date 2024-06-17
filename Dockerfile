# Use the latest Fedora image as the base
FROM fedora:latest

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install any necessary dependencies
RUN dnf -y update && \
    dnf -y install gcc python3 python3-devel

# Install Python package dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port your application will run on
EXPOSE 443

# Set the command to run your application
CMD ["python3", "jup.py"]
