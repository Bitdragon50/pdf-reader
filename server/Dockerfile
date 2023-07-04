# Use an official Python runtime as a parent image
FROM python:3.11-bullseye

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
COPY .env .env
# Install any needed packages specified in requirements.txt
#RUN pip install --use-pep517
#RUN bash ./script/start 

RUN pip install virtualenv
RUN python -m virtualenv venv
RUN ls -la /app

#RUN . env.txt
RUN . venv/bin/activate
RUN pip install -r requirements.txt

RUN OPENAI_API_KEY=$OPENAI_API_KEY

# Make port 80 available to the world outside this container
EXPOSE 8080

# Run app.py when the container launches
CMD ["python", "app.py"]