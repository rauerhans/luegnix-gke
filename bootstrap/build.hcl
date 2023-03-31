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

<<<<<<< HEAD
    sha     = "fa69a42909503d4064f1af8720b3644af78949ad39a5fd57b2aff925c78b9941"
=======
    sha     = "508ebf99ff25516343a3987d5b4a6e0a182f9347f925963401c6561acd9f2eaa"
>>>>>>> origin/main
    retries = 0
    verbose = false
  }
}
