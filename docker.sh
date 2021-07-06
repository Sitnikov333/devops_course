#!/bin/bash
curl -s https://raw.githubusercontent.com/Sitnikov333/devops_course/main/add/Dockerfile > Dockerfile
curl -s https://raw.githubusercontent.com/Sitnikov333/devops_course/main/add/index.html > index.html
docker build -t my-site:latest .
docker run -p 80:80 -d my-site
rm -f index.html Dockerfile 
