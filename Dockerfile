# use the official python image rom the docker hub
FROM python:3.9-slim

# set the working Directory
WORKDIR /app

# copy the current directory content into the container at/app
COPY . /app

# install any needed package specified in requirements.txt
RUN pip install flask

# make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when container launches
CMD ["python","app.py"]