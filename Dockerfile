# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
#RUN pip install --use-pep517
RUN pip install --upgrade pip setuptools wheel
RUN pip install --use-pep517 --trusted-host pypi.python.org --disable-pip-version-check -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "cb-pdf-reader.py"]
