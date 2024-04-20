```shell
Docker image for ssh from web. 

PREREQUISITES
 - Docker installed

INSTALLATION
 - Docker compose example:

# Webssh
  webssh:
    container_name: webssh
    image: baroka/webssh:latest
    restart: unless-stopped
    depends_on:
      - traefik     
    networks:
      - t2_proxy
    security_opt:
      - no-new-privileges:true
    environment:
      - TZ=$TZ
      - PGID=$PGID
      - PUID=$PUID 
      - HOSTS_ENTRY=xxxx

 - $HOSTS_ENTRY adds a new line at hosts file end
```
