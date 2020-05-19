# Crontab
Minimal docker image for crontab.
Includes curl for requests to other containers.

*WARNING:* Usage instructions below not working. Please pull the git repo and build using
```
docker build . -t tkav/crontab --build-arg CRONTAB=crontab
```

# Usage

```
docker run -e CRONTAB=crontab tkav/crontab
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
