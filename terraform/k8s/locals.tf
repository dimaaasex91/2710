locals {
  k8s = {
      k8s_host              = "https://master1.myownserv.space:6443"
  }
  
  helm = {
    helm_gitlab_version                 = "0.23.0"
    helm_prometheus_operator_version    = "12.3.0"
    helm_argocd_version                 = "3.31.0"
    helm_argocd_notifications_version    = "1.7.1"
    gitlab_helm_repository              = "https://charts.gitlab.io"
    prometheus_helm_repository          = "https://prometheus-community.github.io/helm-charts"
    argocd_helm_repository              = "https://argoproj.github.io/argo-helm"
    helm_argocd_notifications_version   = ""
  }
}