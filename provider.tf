provider "google" {
credentials = "${file("gkejenkinsx-6550e1dc828c.json")}"
project     = "${var.project-name}"
region      = "${var.region}"
}

