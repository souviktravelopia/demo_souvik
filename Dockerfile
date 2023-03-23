FROM ubuntu:20.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Kolkata /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install libpango-1.0-0 -y
RUN apt-get install libharfbuzz0b -y
RUN apt-get install libpangoft2-1.0-0 -y
RUN apt-get install python3-venv -y
RUN apt-get install nano
WORKDIR /wdir
COPY . .
RUN python3 -m venv venv
RUN source venv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD [ "python3", "test.py"]
