metadata {
  path = "ingress-nginx"
  name = "diff"
}

step "terraform-init" {
  wkdir   = "ingress-nginx/terraform"
  target  = "ingress-nginx/terraform"
  command = "terraform"

  args = [
    "init",
    "-upgrade",
  ]

  sha     = "h1:s2dskoDdmNYxonfTE4hZM/gzpZyoJ1k/LYx/tN0gwE0="
  retries = 0
  verbose = false
}

step "terraform" {
  wkdir   = "ingress-nginx/terraform"
  target  = "ingress-nginx/terraform"
  command = "plural"

  args = [
    "wkspace",
    "terraform-diff",
    "ingress-nginx",
  ]

  sha     = "h1:s2dskoDdmNYxonfTE4hZM/gzpZyoJ1k/LYx/tN0gwE0="
  retries = 0
  verbose = false
}

step "kube-init" {
  wkdir   = "ingress-nginx"
  target  = "ingress-nginx/.plural/NONCE"
  command = "plural"

  args = [
    "wkspace",
    "kube-init",
    "ingress-nginx",
  ]

  sha     = "99aac5aa1efae924db8ddc514302b646898e5c74ccd9c3eff767551b98cfde55"
  retries = 0
  verbose = false
}

step "helm" {
  wkdir   = "ingress-nginx/helm"
  target  = "ingress-nginx/helm"
  command = "plural"

  args = [
    "wkspace",
    "helm-diff",
    "ingress-nginx",
  ]

  sha     = "h1:LhuVZkspAXJ3ovYyAP6vBXmgPmrGK6ODu30ZBbpIGtE="
  retries = 0
  verbose = false
}
