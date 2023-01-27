## REQUISITOS GENERALES:
LAS 3 INSTANCIAS SE DESPLEGARAN EN LA REGION US-EAST-2
1. Localmente tener instalado Terraform >= 1.3, Ansible >=2.9 y awscli
2. Tener configurado sus credenciales de acceso por programacion `aws configure`
3. Crear un Bucket S3 y una DynamoDb table con Partition key = LockID para posteriormente referenciar el nombre de la tabla en el manifiesto terraform 01.versions.tf
4. En el archivo 01.versions.tf referencie la región,  bucket, key y dynamodb_table para el remote state y state blocking.

## REQUISITO HOSTED ZONE EN ROUTE53
1. Crear una public hosted zone
2. Registar en su proveedor de hosting los NS obtenidos en Route53 
## REQUISITOS LLAVE SSH PRIVADA
1. Se requiere tener una llave ssh privada si no la tiene la puede generar desde la consola web de AWS  - si ya dispone de una llave referenciar el nombre de la misma en el archivo 08.ec2-variables.tf variable instance_keypair.
2. En el folder private-key - pegar el archivo que contiene su llave ssh privada, no olvide cambiar el permiso a la llave ssh a 400 `chmod 400 <ssh_private_key>`
3. En el archivo generic-values.tf en la variable ssh_key_private referenciar el path absoluto local donde se encuentra almacenada la llave ssh privada "folder private-key de este proyecto de igual manera coloque el nombre de su subdominio en la variable dns_zone_name"
## PERSONALICE SU PROPIO SUBDOMINIO PARA LA INSTANCIA DE JENKINS
1. En el folder ansible archivo docker-compose.yaml buscar por jenkins.sandboxenv.site todos los resultados obtenidos remplazar por su subdominio.
## COMANDOS DE EJECUCION
### Ubiquese en el folder jenkins y ejecute los siguientes comandos
1. `terraform init`
2. `terraform fmt`
3. `terraform validate`
4. `terraform apply --auto-approve`