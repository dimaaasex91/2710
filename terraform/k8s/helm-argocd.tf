resource "helm_release" "argocd" {
  name          = "argo-cd"
  repository    = local.helm.argocd_helm_repository
  chart         = "argo-cd"
  version       = local.helm.helm_argocd_version
  namespace     = kubernetes_namespace.argocd.metadata[0].name


  values = [
  file("${path.module}/values/argocd.yaml")
  ]
  depends_on = [
      kubernetes_namespace.argocd
  ]
}