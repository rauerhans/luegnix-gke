metadata {
  path = "monitoring"
  name = "deploy"
}

step "terraform-init" {
  wkdir   = "monitoring/terraform"
  target  = "monitoring/terraform"
  command = "terraform"

  args = [
    "init",
    "-upgrade",
  ]

  sha     = "h1:5VyFB3R6hqqGT0kVT4w5l0AUCBTuwyE6K+p596MUbH8="
  retries = 0
  verbose = false
}

step "terraform-apply" {
  wkdir   = "monitoring/terraform"
  target  = "monitoring/terraform"
  command = "terraform"

  args = [
    "apply",
    "-auto-approve",
  ]

  sha     = "h1:5VyFB3R6hqqGT0kVT4w5l0AUCBTuwyE6K+p596MUbH8="
  retries = 2
  verbose = false
}

step "terraform-output" {
  wkdir   = "monitoring"
  target  = "monitoring/terraform"
  command = "plural"

  args = [
    "output",
    "terraform",
    "monitoring",
  ]

  sha     = "h1:5VyFB3R6hqqGT0kVT4w5l0AUCBTuwyE6K+p596MUbH8="
  retries = 0
  verbose = false
}

step "kube-init" {
  wkdir   = "monitoring"
  target  = "monitoring/.plural/NONCE"
  command = "plural"

  args = [
    "wkspace",
    "kube-init",
  ]

<<<<<<< HEAD
  sha     = "00af4018e2a2fb677d1955e9e60b59023c2ac8112923761c4489771acec67273"
=======
  sha     = "a5135cf1e29805606f23a5fcc10131ce68bb1a900bec639a83751c042c093fd4"
>>>>>>> origin/main
  retries = 0
  verbose = false
}

step "crds" {
  wkdir   = "monitoring"
  target  = "monitoring/crds"
  command = "plural"

  args = [
    "wkspace",
    "crds",
    "monitoring",
  ]

  sha     = "h1:QJzNafRcIWRU2+sMuD3q9AEYu0g850LEi1jTrT1fjAM="
  retries = 0
  verbose = false
}

step "bounce" {
  wkdir   = "monitoring"
  target  = "monitoring/helm"
  command = "plural"

  args = [
    "wkspace",
    "helm",
    "monitoring",
  ]

<<<<<<< HEAD
  sha     = "h1:ppaiQ9fem9jpXyt3b/LqpMsNBoS1zy+1tNJC3ulFDtU="
=======
  sha     = "h1:Rqn/N/qncDuNna2fY+Jz5wSQEfL8iHd0fKEOA1DccFQ="
>>>>>>> origin/main
  retries = 2
  verbose = false
}
