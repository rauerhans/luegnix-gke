metadata {
  name = "console"
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
  path = "helm/console"
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
    sha     = "ea481d923c58f73e91766ee1de63afc50edb506ee813ef2049e4f275c0ad95c2"
=======
    sha     = "bdc99e0b7af0bb72172116a62d9fd7ceba6bf909f9a60c095bad48d210c12acd"
>>>>>>> origin/main
    retries = 0
    verbose = false
  }
}
