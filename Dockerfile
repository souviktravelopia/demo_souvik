FROM python:3.6
# Create app directory
WORKDIR /wdir

# Install app dependencies
COPY . .
RUN pip install -r requirements.txt

CMD [ "python", "test.py" ]