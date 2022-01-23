provider "helm" {
  kubernetes {
    config_path = "./k8s-config.yaml"
  }
}

provider "kubernetes" {
  config_path = "./k8s-config.yaml"  
}
