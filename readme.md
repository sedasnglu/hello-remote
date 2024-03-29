With this project, a sample Go Web application was deployed to Kubernetes Cluster using CI/CD steps via Jenkins. All installation steps performed with Ansible.

Necessary Tools
- Ansible
- Vagrant

1. Virtualbox Installation with Ansible Role.

   ```python 
   cd ansible 

   ansible-playbook vbox.yml -v
   ```
2. Create 3 VM and Installation K8S-Jenkins-Docker Registy with Vagrant and Ansible.
   
   ```python
   cd ansible

   sudo vagrant up

   ***Vagrantfile use an ansible playbook.yaml to perform following operations. 
   ```
   2.1. Docker-Registry Installation
    
   ```python 
   Docker Registry runs as a docker container on http://192.168.56.12:5000 .
   ```  
   2.2. Kubernetes Cluster Installation with 1 Master and 1 Worker

   ```python 
   Kubernetes Master Node: 192.168.56.10
   Kubernetes Worker Node: 192.168.56.11 
   ``` 
   2.3. Jenkins Installation

   ```python 
   - You can access Jenkins project with http://192.168.56.12:8080

   - Login and Install plugins.

   - Install Kubernetes Plugins from "manage plugins" section in Jenkins GUI.

   - Add Kubernetes Credentials from "manage and clouds" section in Jenkins GUI.

   - Add Docker Registry and Github Credentials from "manage credentials" section in Jenkins GUI.

   - Add Multibranch Pipeline item in Jenkins GUI and configure Branch Sources. 

   - CI/CD pipeline automatically starts.
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
   kubectl get svc --> Nodeport

   http://192.168.56.11:<Nodeport>
   ```