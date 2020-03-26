provider "google" {
credentials = "${file("env-pro-terraform-895932c0de6e.json")}"
project     = "${var.project-name}"
region      = "${var.region}"
}

