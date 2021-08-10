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
docker-compose up -d
```

## Deployment workflow with https
- Complete the steps above

- Provision certs, setup reverse proxy
```bash
cd deploy; ./certs.sh && docker-compose up -d
```

## AWS deployment

```bash
aws cloudformation create-stack --stack-name data-dashboard --template-body file://deploy/cf_demo_stack.yml --parameters ParameterKey=SSHIP,ParameterValue=76.28.82.197/32
```
