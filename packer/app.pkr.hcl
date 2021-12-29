// packer {
//   required_plugins {
//     virtualbox = {
//       version = ">= 1.0"
//       source = "github.com/hashicorp/virtualbox"
//     }
//   }
// }

source "vagrant" "centos7" {
  communicator = "ssh"
  global_id = "5928318"
  provider = "virtualbox"
  add_force = true
  box_name = "centos7-node"
}

build {
  sources = ["source.vagrant.centos7"]
}