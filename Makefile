all: up

up:
	# 8081 is the external port, 80 is the internal port for the traefik loadbalancer. It can be changed, however 80 is the default port.
	k3d cluster create --api-port 6550 -p "8081:80@loadbalancer" --agents 2

down:
	k3d cluster delete