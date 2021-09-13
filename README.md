# Start-up
* ```make up```
* ```istioctl install``` # manually reduce memory request for istiod deployment if running into insufficent memory
* ```kubectl apply -f kustomization/manifests```
* ```kubectl apply -f kustomization/istio```

# Todo
* convert manifests to a helm chart
* install istio into cluster with helm instead of using istioctl