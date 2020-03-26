resource "random_id" "instance_id" {
byte_length = 8
}

resource "google_compute_instance" "terraform" {
name         = "terraform-vm-${random_id.instance_id.hex}"
machine_type = "${var.vm_type}"
zone         = "${var.zone}"

boot_disk {
initialize_params {
image = "${var.image}"
}
}

metadata_startup_script = "sudo apt-get -y update;sudo apk update; sudo apt-get -y dist-upgrade;sudo apt-get -y install nginx;sudo apt-get -y install git;sudo apt-get -y install openjdk-8-jdk;sudo apt-get -y install maven;sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add - ;sudo echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list ; sudo apt-get -y update; sudo apt-get -y install jenkins;sudo service jenkins start"

network_interface {
network = "default"
access_config {
}
}
#metadata {
#sshKeys = "gcp_public:${file("gcp_public.pub")}"
#sshKeys = "ubuntu_gcp:${file("ubuntu_gcp.pub")}"
#}
}

