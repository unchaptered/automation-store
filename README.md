# automation-store

**Automation with Public EC2 in default VPC**

![](images\public-ec2.png)

- Install
    - NGINX
        - Install by apt
        - Install by role(ansible-galaxy)
        - Install and HTTP
        - Install and HTTP LB(ip hash)
        - Install and HTTP LB(least conn)
        - Install and HTTP LB(round robin)
    - Node
        - 16.x
    - Python
        - Install by apt
    - SSH
        - SSH Notify with Python3

## Ansible

```bash
# [ansible-playbook]
ansible-playbook -i ~/inventory.txt ./ansible-playbook.yml

# [ansible-vault]
ansible-vault create ./keys/ansible/ansible.yml
ansible-vault view ./keys/ansible/ansible.yml
ansible-vault edit ./keys/ansible/ansible.yml

ansible-vault encrypt ./keys/ansible/ansible.yml
ansible-vault decrypt ./keys/ansible/ansible.yml

ansible-vault rekey ./keys/ansible/ansible.yml
```

## Docker

Some Automation, Provisioning Utility Tools can't support Windows. <br>
So you need to Linux-like OS or VMWare, Docker etc on. <br>
In this project I use docker to run tools.

### Commands

1. Build, Start

```bash
# [docker]
# docker build --build-arg TARGET_VALUE=<Public 아이피> -t automation-store .
docker build -t automation-store .
docker run -t -i automation-store
```

2. Clean up

```bash
# [docker]
docker stop $(docker ps -a -q)  # Stop all containers
docker rm $(docker ps -a -q)    # Remove all containers
docker rmi $(docker images -q)  # Remove all images
```