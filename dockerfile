# Use the official Python image from the Docker Hub
FROM python:3.9

# Set environment variables
ENV DATABASE_NAME='HRMS'
ENV DATABASE_USER='devuser'
ENV DATABASE_PASSWORD='Devuser#123'
ENV DATABASE_HOST='216.48.191.120'
ENV DATABASE_PORT='5432'

ENV email_host_user='nihar@marolix.com'
ENV EMAIL_HOST_PASSWORD='C6050425D5DE4D829132626A42EF01D034D0'
ENV SECRET_KEY='django-insecure-#cedo6k@mkcoy%!r2$wy$8h-(9x&ev+v%tvx+-k-o%)2jt$fb^'
ENV EMAIL_BACKEND='django.core.mail.backends.smtp.EmailBackend'
ENV EMAIL_HOST='smtp.elasticemail.com'
ENV EMAIL_PORT='2525'
ENV EMAIL_USE_TLS='True'
ENV EMAIL_USE_SSL='False'
ENV default_from_email='nihar@marolix.com'

# Set work directory
WORKDIR /usr/src/app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django application to the container
COPY . .

# Expose the necessary port for Django
EXPOSE 8000

# Command to start Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
