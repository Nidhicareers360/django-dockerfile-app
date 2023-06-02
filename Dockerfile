# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /django-dockerfile-app

# Copy the requirements.txt file to the container
COPY requirement.txt .

# Install the Python dependencies
RUN pip install -r requirement.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the Django app will listen on
EXPOSE 8055

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8055"]






