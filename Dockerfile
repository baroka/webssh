# build:
#  docker build -t baroka/webssh .

FROM python:3-slim

EXPOSE 8888

# Install packages
RUN pip3 install webssh
RUN rm -rf /root/.cache/*

# Run the command on container startup
CMD wssh