# DEVOPS TECHNICAL ASSESSMENT

## ESTRUCTURA DEL PROYECTO
### HELM FOLDER
1. Contiene la helm chart que realizará el despliegue del microservicio y configuración de las reglas del ingress.

### IaC FOLDER
1. Contiene el folder jenkins-sonarqube el cual se encuentran los manifiestos terraform, ansible playbooks y scripts utilizados para desplegar los servicios de jenkins, sonarqube y jenkins-slave-node "configurado helm"
2. Contiene el folder Kubernetes-eks-cluster el cual contiene todos los manifiestos para desplegar el cluster EKS y un script que instala los objetos de Kong Gateway en el cluster a través de un local provisioner.

### MICROSERVICE FOLDER
1. Contiene el código del microservicio NodeJs
2. Contiene el Dockerfile y Jenkinsfile
3. Contiene el archivo server.test.js el cual realiza un test básico que comprueba la existencia de los archivos Dockerfile y Jenkinsfile.

## SOFTWARE NECESARIO PARA EL AMBIENTE LOCAL
1. AWSCLI con permisos de Administrador
2. Ansible
3. Terraform
4. Docker
5. Git

### PRUEBA DE FUNCIONAMIENTO

`curl -X POST 'http://microservice.sandboxenv.site/DevOps/' \`
`-H 'apiKey: 2f5ae96c-b558-4c7b-a590-a501ae1c3f6c' \`
`-H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7Im1lc3NhZ2UiOiJUaGlzIGlzIGEgdGVzdCIsInRvIjoiSnVhbiBQZXJleiIsImZyb20iOiJSaXRhIEFzdHVyaWEiLCJ0aW1lVG9MaWZlU2VjIjo0NX0sImlhdCI6MTY3NDc5NzY1MCwiZXhwIjoxNjc1MjI5NjUwfQ.avD1k0shLMN4peOO9cJq_kgxEtS4YFhKCJFVyHOcYp4' \`
`-H 'Content-Type: application/json' \`
`--data-raw '{
    "message": "This is a test",
    "to": "Juan Perez",
    "from": "Rita Asturia",
    "timeToLifeSec": 45
}'`


## IMAGENES

### Test del microservicio
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-27+at+00.14.11.png "Test del microservicio")


### Pipeline Stages
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-26+at+23.59.00.png "Pipeline Stages")

### Jest Test
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-26+at+23.59.23.png "Jest Test")

### SonarQube Code Analysis
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-27+at+00.01.02.png "Sonarqube Code Analysis")

### DockerHub Container Registry
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-27+at+00.01.57.png "DockerHub Container Registry")

### Deployment y Pods creados
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-27+at+00.03.00.png "DockerHub Container Registry")

### Kong Ingress 
![Image](https://devopstest-imagenes-fm.s3.amazonaws.com/Screen+Shot+2023-01-27+at+00.03.23.png "DockerHub Container Registry")