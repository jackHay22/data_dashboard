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
cd deploy; ./certs.sh
```

## AWS deployment
- Replace `<my_ip>` with your IP address
- Replace VPC id, subnets, create a keypair in the aws console and download
- Replace Route53 hosted zone id with your own

```bash
aws cloudformation create-stack --stack-name data-dashboard --template-body file://deploy/cf_demo_stack.yml --parameters ParameterKey=SSHIP,ParameterValue=<my_ip>/32
```
