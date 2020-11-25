resource "null_resource" "cowsay-something" {
  provisioner "local-exec" {
    command = "/usr/games/cowsay 'Moo World'"
  }
}

# Don't forget to change the values below!
terraform {
  backend "remote" {
    hostname = "open-tarpon.tfe.training.hashidemos.io"
    organization = "myorg"
    workspaces {
      name = "myrepo"
    }
  }
}
