workflow "Build and Publish" {
  on = "push"
  resolves = ["Build"]
}

action "Install" {
  uses = "actions/npm@e7aaefe"
  runs = "install"
}

action "Build" {
  uses = "actions/npm@e7aaefe"
  needs = ["Install"]
  runs = "build"
}
