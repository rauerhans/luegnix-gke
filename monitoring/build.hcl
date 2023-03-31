metadata {
  name = "monitoring"
}

scaffold "terraform" {
  path = "terraform"
  type = "terraform"
}

scaffold "crds" {
  path = "crds"
  type = "crd"
}

scaffold "helm" {
  path = "helm/monitoring"
  type = "helm"

  preflight "update-deps" {
    wkdir   = ""
    target  = "Chart.yaml"
    command = "plural"

    args = [
      "wkspace",
      "helm-deps",
    ]

    sha     = "fe3da1a6bbf216f6c99858cc32d3d065f5ef48c1d57a3a5a7afc84d896b8a1e3"
    retries = 0
    verbose = false
  }
}
