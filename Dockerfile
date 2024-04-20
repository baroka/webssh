# build:
#  docker build -t baroka/webssh .

FROM python:3-slim

EXPOSE 8888

# Install packages
RUN pip3 install webssh && \
    rm -rf /root/.cache/*

WORKDIR /work

# Copy entrypoint script
COPY entrypoint.sh .
RUN chmod a+x entrypoint.sh

# Run the command on container startup
ENTRYPOINT ["/work/entrypoint.sh"]