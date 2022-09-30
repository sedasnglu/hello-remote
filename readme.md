With this project, Kubernetes Cluster created using the Infrastructure as a Code and a sample Go Web application was deployed to the Kubernetes Cluster via Jenkins.

Tools
- Ansible
- Vagrant

1. Virtualbox Installation

    ansible-playbook vbox.yml -v

2. Create 3 VM and Installation K8S-Jenkins-Docker Registy

   vagrant up

   Vagrantfile has a playbook.yaml. All operations are performed with this ansible role. **Operations steps are 2.1 , 2.2. and 2.3 .;**

   2.1. Jenkins Installation

   ```python 
   You can  access Jenkins project with https://192.168.56.12:8080 .

   Create any user from GUI

   Install Kubernetes Plugins

   Add Kubernetes Credentials from manage and clouds section.
   ```
   2.2. Docker-Registry Installation
    
   ```python 
   Add Docker Registry and Github Credentials from manage credentials section.
   ```  
   2.3. Kubernetes Cluster Installation with 1 Master and 1 Worker

3. Create Jenkins Pipeline Project with Jenkinsfile

   **Jenkinsfile performs following steps.**
   
   3.1. Create an application image with Dockerfile

   3.2. Build application

   3.3. Push the docker image to docker registry

   3.4. Deploy Kubernetes 

