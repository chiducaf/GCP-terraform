resource "google_compute_firewall" "default" {
name    = "terraform"
network = "default"

allow {
protocol = "tcp"
ports    = ["80","443","8080","22"]
}

allow {
protocol = "icmp"
}
}

output "ip" {
value = "${google_compute_instance.terraform.*.network_interface.0.access_config.0.nat_ip}"
}

