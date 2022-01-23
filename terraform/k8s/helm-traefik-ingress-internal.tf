locals {
  helm_traefik_version                      = "10.9.1"
  traefik_helm_repository                   = "https://helm.traefik.io/traefik"
}

resource "helm_release" "traefik-ingress" {
  name          = "tarefik"
  repository    = local.traefik_helm_repository
  chart         = "traefik"
  version       = local.helm_traefik_version
  namespace     = "kube-system"


  values = [
  file("${path.module}/values/traefik-ingress.yaml")
  ]
}