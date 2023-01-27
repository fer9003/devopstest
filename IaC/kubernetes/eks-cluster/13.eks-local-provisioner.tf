resource "null_resource" "initial_setup" {
  depends_on = [aws_eks_node_group.eks_ng_public]
  provisioner "local-exec" {
    command     = <<-EOT
        aws eks --region us-east-2 update-kubeconfig --name Infraestructura-dev-eks
        kubectl create -f https://bit.ly/k4k8s
        kubectl create secret generic andres-apikey --from-literal=kongCredType=key-auth --from-literal=key=$API_KEY 
    EOT
    working_dir = path.module
  }
}
