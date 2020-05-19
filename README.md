# Crontab
Minimal docker image for crontab.
Includes curl for requests to other containers.

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
