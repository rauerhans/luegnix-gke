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

  sha     = "156da9ae1bca3ca7ce5127fb5b4cd936d36e096c37f0a5db86528404a6e18cb4"
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

  sha     = "h1:DCOV8JsKM6tPlHDehGVbFn/qkYZdqs5LRb+AAyH2quQ="
  retries = 0
  verbose = false
}
