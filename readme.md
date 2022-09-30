With this project, a sample Go Web application was deployed to Kubernetes Cluster using CI/CD steps via Jenkins. All installation steps performed with Ansible.

Necessary Tools
- Ansible
- Vagrant

1. Virtualbox Installation with Ansible Role.

   ```python 
   ansible-playbook vbox.yml -v
   ```
2. Create 3 VM and Installation K8S-Jenkins-Docker Registy with Vagrant and Ansible.
   
   ```python 
   vagrant up

   Vagrantfile use a playbook.yaml to  performed following operations. 
   ```

   2.1. Jenkins Installation

   ```python 
   You can  access Jenkins project with https://192.168.56.12:8080

   Create any user from GUI

   Install Kubernetes Plugins from manage plugins section.

   Add Kubernetes Credentials from manage and clouds section.
   ```
   2.2. Docker-Registry Installation
    
   ```python 
   Add Docker Registry and Github Credentials from manage credentials section.
   ```  
   2.3. Kubernetes Cluster Installation with 1 Master and 1 Worker

   ```python 
   Kubernetes Master Node: 192.168.56.10
   Kubernetes worker Node: 192.168.56.11 
   ``` 
3. Create Jenkins Pipeline Project with Jenkinsfile

   ```python
   Jenkinsfile performs following steps.
   ```   
   3.1. Create an application image with Dockerfile

   3.2. Build application

   3.3. Push the docker image to docker registry

   3.4. Deploy Kubernetes 

4. Access Your Application

   ```python
   192.168.56.11:<Nodeport>
   ``` 
