resource "null_resource" "initial_setup" {
  depends_on = [aws_eks_node_group.eks_ng_public]
  provisioner "local-exec" {
    command     = <<-EOT
        aws eks --region us-east-2 update-kubeconfig --name Infraestructura-dev-eks
        kubectl create -f https://bit.ly/k4k8s
        kubectl create secret generic andres-apikey --from-literal=kongCredType=key-auth --from-literal=key=2f5ae96c-b558-4c7b-a590-a501ae1c3f6c 
    EOT
    working_dir = path.module
  }
}
