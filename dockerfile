# Use the official Python image from the Docker Hub
FROM python:3.9

# Set work directory
WORKDIR /usr/src/app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django application to the container
COPY . .

# Expose the necessary port for Django
EXPOSE 8001

# Command to start Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
