variable "region" {
  default = "us-central1"
}
variable "project-name" {
  default = "gkejenkinsx"
}
#variable "tags"{
#type = "list"
  #default = ["Terraform-1", "Terraform-2"]
#}
variable "zone" {
  default = "us-central1-a"
}
variable "image" {
  default = "ubuntu-os-cloud/ubuntu-1604-lts"
}
variable "vm_type" {
  default = "f1-micro"
}
#variable "instance_type"{
 # type = string
 # }
#variable "vm_names"{
 # type = list(string)
  #default = ["jenkins-vm1","jenkins-vm2","jenkins-vm2"]
 # }

