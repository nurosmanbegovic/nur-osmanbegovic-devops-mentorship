# Server setup

## Connect to EC2 instance using SSH
ssh -i "nur-osmanbegovic-web-server-key.pem" ec2-user@3.126.248.184

## Install nvm and node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

 . ~/.nvm/nvm.sh

 nvm install node

## Install git and setup public key

 sudo yum update -y

 sudo yum install git -y

 ssh-keygen -t rsa -b 4096 -C "nur.osmanbegovic@gmail.com"

 cat /home/ec2-user/.ssh/id_rsa.pub

 git clone git@github.com:allops-solutions/nodejs-simple-app.git

## Install and setup nginx

 sudo yum install nginx

 systemctl status nginx

sudo systemctl enable nginx

#### Create nginx config file for our node app

 sudo nano /etc/nginx/conf.d/node-app.conf

server {\
  &nbsp;&nbsp;&nbsp;&nbsp;listen 80;\
  &nbsp;&nbsp;&nbsp;&nbsp;server_name 3.126.248.184;\
\
  &nbsp;&nbsp;&nbsp;&nbsp;location / {\
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy_pass http://127.0.0.1:8008;\
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy_http_version 1.1;\
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy_set_header Upgrade $http_upgrade;\
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy_set_header Connection 'upgrade';\
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy_set_header Host $host;\
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy_cache_bypass $http_upgrade;\
  }\
}


## Run node app

### Install pm2 to run node app in the background

 npm install pm2

 ### Install project packages

 cd nodejs-simple-app/

 npm install

 ### Run node app using pm2

 pm2 start server.js

## Access through browser using EC2 instance public IP

http://3.126.248.184/





