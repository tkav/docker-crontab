# Crontab
Minimal docker image for crontab.
Includes curl for requests to other containers.

# Usage

```
docker run -e CRONTAB=crontab tkav/crontab
```

```CRONTAB``` should point to your Crontab file

# Example Crontab

Create crontab file
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