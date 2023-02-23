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

    sha     = "815e6af24592ede0b5c2a3b0bcb0b4ad3a4c768f0c7c081848dc0a20311b6704"
    retries = 0
    verbose = false
  }
}
