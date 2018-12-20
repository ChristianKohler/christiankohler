action "Build" {
  uses = "actions/npm@e7aaefe"
  runs = "build"
}

action "Publish" {
  needs = "Build"
  uses = "actions/npm@e7aaefe"
  args = "publish --access public"
  env = {}
  secrets = ["NPM_AUTH_TOKEN"]
}

workflow "Build and Publish" {
  on = "push"
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@e7aaefe"
  runs = "build"
}
