metadata {
  name = "ingress-nginx"
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
  path = "helm/ingress-nginx"
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
    sha     = "a2c71769632bbb43372b1ccae8dd1265d9fe1d2082f071ce9e946b7fb1a5f4bc"
=======
    sha     = "cd2ccba0816325847954d1eb11df95e79edbd5ee5beabdb8453f5174a6041e8b"
>>>>>>> origin/main
    retries = 0
    verbose = false
  }
}
