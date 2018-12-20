workflow "Build and Publish" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "actions/npm@e7aaefe"
  runs = "build"
}
