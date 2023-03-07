output "vpc_network" {
	value = module.gcp-bootstrap.vpc_network
	sensitive = true
}


output "cluster" {
	value = module.gcp-bootstrap.cluster
	sensitive = true
}


