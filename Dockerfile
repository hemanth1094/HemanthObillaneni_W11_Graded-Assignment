FROM python:3.8
 
# Create app directory
WORKDIR /app
 
# Install app dependencies
COPY . /app

RUN pip install -r requirements.txt
 
EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
