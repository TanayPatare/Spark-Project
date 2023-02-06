# Language Declaration
FROM python:3.9

# copying all files in docker (copy(COPY) all(.) in app(/app) folder in docker)
COPY . /app

# Setting WORK directory
WORKDIR /app

#installing dependencies 
RUN pip install -r requirement.txt

#Declaring Port for deployment so that it will run onn that port
EXPOSE $PORT

#To launch flask application
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app