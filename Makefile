all: up

up:
	# setup k3d and disable traefik ingress controller since using Istio for ingress
	k3d cluster create \
		--k3s-server-arg "--disable=traefik" \
		-p 80:80@loadbalancer \
		-p 443:443@loadbalancer

down:
	k3d cluster delete