resource "helm_release" "nginx" {
  name       = "nginx"
  chart      = "./nginx"
  namespace  = "nginx-app"

  depends_on = [kubernetes_namespace.example]
}