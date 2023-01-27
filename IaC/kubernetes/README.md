## REQUISITOS GENERALES:
EL CLUSTER SE DESPLEGARA EN LA REGION US-EAST-2
1. Localmente tener instalado Terraform >= 1.3, Ansible >=2.9 y awscli
2. Tener configurado sus credenciales de acceso por programacion `aws configure`
3. Crear un Bucket S3 o tener uno ya creado, crear una tabla DynamoDB con Partition key = LockID para posteriormente referenciar el nombre de la tabla en el manifiesto terraform 01.versions.tf
4. En el archivo 01.versions.tf referencie la región,  bucket, key y dynamodb_table para el remote state y state blocking.
5. En el manifiesto 02.generic-values.tf,  ubique la variable ssh_private_key y coloque el nombre de su llave ssh privada.

## COMANDOS DE EJECUCION
### Ubiquese en el folder jenkins y ejecute los siguientes comandos
1. `terraform init`
2. `terraform fmt`
3. `terraform validate`
4. `terraform apply --auto-approve`