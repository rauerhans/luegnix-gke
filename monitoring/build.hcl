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

<<<<<<< HEAD
    sha     = "fe3da1a6bbf216f6c99858cc32d3d065f5ef48c1d57a3a5a7afc84d896b8a1e3"
=======
    sha     = "3d2d3e151e9ee83761bdc8cb2bd82b79acaf52a3628c390066c9c4d414b4fe80"
>>>>>>> origin/main
    retries = 0
    verbose = false
  }
}
