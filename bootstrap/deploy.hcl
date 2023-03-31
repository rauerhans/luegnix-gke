metadata {
  path = "bootstrap"
  name = "deploy"
}

step "terraform-init" {
  wkdir   = "bootstrap/terraform"
  target  = "bootstrap/terraform"
  command = "terraform"

  args = [
    "init",
    "-upgrade",
  ]

<<<<<<< HEAD
  sha     = "h1:fEOReAcnCxzf/kW/miu9TuMjNvVacL4fiEYjEIjdKxs="
=======
  sha     = "h1:5rKpTDQjQlvJFPNjyVK1lUsoFCtAwdtYmiM9P+D875A="
>>>>>>> origin/main
  retries = 0
  verbose = false
}

step "terraform-apply" {
  wkdir   = "bootstrap/terraform"
  target  = "bootstrap/terraform"
  command = "terraform"

  args = [
    "apply",
    "-auto-approve",
  ]

<<<<<<< HEAD
  sha     = "h1:fEOReAcnCxzf/kW/miu9TuMjNvVacL4fiEYjEIjdKxs="
=======
  sha     = "h1:5rKpTDQjQlvJFPNjyVK1lUsoFCtAwdtYmiM9P+D875A="
>>>>>>> origin/main
  retries = 2
  verbose = false
}

step "terraform-output" {
  wkdir   = "bootstrap"
  target  = "bootstrap/terraform"
  command = "plural"

  args = [
    "output",
    "terraform",
    "bootstrap",
  ]

<<<<<<< HEAD
  sha     = "h1:fEOReAcnCxzf/kW/miu9TuMjNvVacL4fiEYjEIjdKxs="
=======
  sha     = "h1:5rKpTDQjQlvJFPNjyVK1lUsoFCtAwdtYmiM9P+D875A="
>>>>>>> origin/main
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
  ]

<<<<<<< HEAD
  sha     = "ccb0404a17413d268536c9eef2152364c97a6adda50f28a23759ecdc60c3b5ce"
=======
  sha     = "c5dc77b845bf8034907618e9913d67b984e382b0cf18500e3789177404eb3daa"
>>>>>>> origin/main
  retries = 0
  verbose = false
}

step "crds" {
  wkdir   = "bootstrap"
  target  = "bootstrap/crds"
  command = "plural"

  args = [
    "wkspace",
    "crds",
    "bootstrap",
  ]

<<<<<<< HEAD
  sha     = "h1:l9QQH3v/pkycZAvjGoQXOKgYW/QlxJn+WtNuG6zOFyU="
=======
  sha     = "h1:hKsVLjNo0HTHkNN+cfOTrLjTwNWU/Rwp2Wk0Vkvzsrc="
>>>>>>> origin/main
  retries = 0
  verbose = false
}

step "bounce" {
  wkdir   = "bootstrap"
  target  = "bootstrap/helm"
  command = "plural"

  args = [
    "wkspace",
    "helm",
    "bootstrap",
  ]

<<<<<<< HEAD
  sha     = "h1:W8Fw6uY12V7bDnDQpOXYlWCsnRAtDGTdVHZg2GTXtNk="
=======
  sha     = "h1:yeHnBcteIzYaV/lbWWgYsbc+RnAAvLWxnSpBBNugdQE="
>>>>>>> origin/main
  retries = 2
  verbose = false
}
