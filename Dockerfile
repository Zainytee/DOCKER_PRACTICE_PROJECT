# A light weight python base image

FROM python:3.11.11-slim-bookworm

# Setting my work directory

WORKDIR /app 

# Copying the application dependencies from requirement.txt

COPY requirements.txt .

#Installing the dependencies from requirement.txt

RUN pip install --no-cache-dir -r requirements.txt

#Copying the application code into the image.

COPY app/ .

#Expose port 8501 to allow access to the Streamlit app.

EXPOSE 8501

# Set the entrypoint to run Streamlit
CMD ["streamlit", "run", "data_process.py"]


#Link to the repository where the image is published

# https://hub.docker.com/repository/docker/zainabojo/my-python-streamlit-app