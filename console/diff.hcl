metadata {
  path = "console"
  name = "diff"
}

step "terraform-init" {
  wkdir   = "console/terraform"
  target  = "console/terraform"
  command = "terraform"

  args = [
    "init",
    "-upgrade",
  ]

  sha     = "h1:jQ+lY1rkj8yLthL1MBmb3HyYWDaTHRJCa04C2vO1mag="
  retries = 0
  verbose = false
}

step "terraform" {
  wkdir   = "console/terraform"
  target  = "console/terraform"
  command = "plural"

  args = [
    "wkspace",
    "terraform-diff",
    "console",
  ]

  sha     = "h1:jQ+lY1rkj8yLthL1MBmb3HyYWDaTHRJCa04C2vO1mag="
  retries = 0
  verbose = false
}

step "kube-init" {
  wkdir   = "console"
  target  = "console/.plural/NONCE"
  command = "plural"

  args = [
    "wkspace",
    "kube-init",
    "console",
  ]

  sha     = "e468c62e8410187ec2815798e26f36de5671eef245499baf9e8978a230c5ff0d"
  retries = 0
  verbose = false
}

step "helm" {
  wkdir   = "console/helm"
  target  = "console/helm"
  command = "plural"

  args = [
    "wkspace",
    "helm-diff",
    "console",
  ]

  sha     = "h1:HzFDgy0kAsnww/hx0CZAwNnFPQN/WzgiKhD47E+UTVw="
  retries = 0
  verbose = false
}
