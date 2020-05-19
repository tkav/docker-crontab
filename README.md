# Crontab
Minimal docker image for crontab.
Includes curl for requests to other containers.

# Usage

```
docker build tkav/crontab --build-arg CRONTAB=crontab
docker run -d tkav/crontab
```

```CRONTAB``` should point to your Crontab file

# Example Crontab

Create a crontab file
```
* * * * * echo hello world

# Interact with another container
#* * * * * ping apache
#* * * * * curl apache/generate_reports.php
```

# docker-compose example

```
version: "3.7"
services:
  cron:
    image: tkav/crontab
    container_name: crontab
      args:
        CRONTAB: 'mycrontab'
```

# Check Logs

```
docker logs -f crontab
```