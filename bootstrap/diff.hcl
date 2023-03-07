metadata {
  path = "bootstrap"
  name = "diff"
}

step "terraform-init" {
  wkdir   = "bootstrap/terraform"
  target  = "bootstrap/terraform"
  command = "terraform"

  args = [
    "init",
    "-upgrade",
  ]

  sha     = "h1:fLlsxqkzDPovwqhQ0p4SBLAmCuvz8TZJnfNN7IzMou0="
  retries = 0
  verbose = false
}

step "terraform" {
  wkdir   = "bootstrap/terraform"
  target  = "bootstrap/terraform"
  command = "plural"

  args = [
    "wkspace",
    "terraform-diff",
    "bootstrap",
  ]

  sha     = "h1:fLlsxqkzDPovwqhQ0p4SBLAmCuvz8TZJnfNN7IzMou0="
  retries = 0
  verbose = false
}

step "kube-init" {
  wkdir   = "bootstrap"
  target  = "bootstrap/.plural/NONCE"
  command = "plural"

  args = [
    "wkspace",
    "kube-init",
    "bootstrap",
  ]

  sha     = "14b69514cedc2c8272951a28bae61d4d12905c96408fcd97cbf20526fd7ef338"
  retries = 0
  verbose = false
}

step "helm" {
  wkdir   = "bootstrap/helm"
  target  = "bootstrap/helm"
  command = "plural"

  args = [
    "wkspace",
    "helm-diff",
    "bootstrap",
  ]

  sha     = "h1:DZ/jDwL5AFchrB3tOKbMpNNADsxotqiMAsK9eoY/qNg="
  retries = 0
  verbose = false
}
