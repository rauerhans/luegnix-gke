metadata {
  name = "bootstrap"
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
  path = "helm/bootstrap"
  type = "helm"

  preflight "update-deps" {
    wkdir   = ""
    target  = "Chart.yaml"
    command = "plural"

    args = [
      "wkspace",
      "helm-deps",
    ]

    sha     = "dd26c51d01ee8ecc0d3fd9ac2d3a7ea50d2a7f8794e42b4f38d2542a74f4a73b"
    retries = 0
    verbose = false
  }
}
