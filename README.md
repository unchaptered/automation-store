# automation-store

**Automation with Public EC2 in default VPC**

![](images\public-ec2.png)

## Docker

Some Automation, Provisioning Utility Tools can't support Windows. <br>
So you need to Linux-like OS or VMWare, Docker etc on. <br>
In this project I use docker to run tools.

### Commands

1. Build, Start

```bash
# docker build --build-arg TARGET_VALUE=<Public 아이피> -t automation-store .
docker build -t automation-store .
docker run -t -i automation-store
```

2. Clean up

```bash
# Stop all containers
docker stop $(docker ps -a -q)

# Remove all containers
docker rm $(docker ps -a -q)

# Remove all images
docker rmi $(docker images -q) 
```