resource "helm_release" "argocd-notifications" {
  name          = "argocd-notifications"
  repository    = local.helm.argocd_helm_repository
  chart         = "argocd-notifications"
  version       = local.helm.helm_argocd_notifications_version
  namespace     = kubernetes_namespace.argocd.metadata[0].name


  values = [
  file("${path.module}/values/argocd-notifications.yaml")
  ]
  depends_on = [
      kubernetes_namespace.argocd
  ]
}