# Data Dashboard

## Walkthrough videos of the final app:
https://www.youtube.com/watch?v=y2czjZpic-c
https://www.youtube.com/watch?v=7IzDEde8MPY

## Deployment workflow

### Create secrets file
```bash
echo "SECRET_KEY_BASE=<some secret>" > secrets.env
```

### Init the database
```bash
docker-compose build && docker-compose run data_dashboard_web rake db:setup
```

### Bring up the database and the web server
```bash
docker-compose up

```

## Deployment workflow with https
