kubectl get pods
kubectl run toolingcontainer -it  --image docker.io/jsenon/toolingcontainer:latest bash
kubectl rollout history deployment/demo-istio
kubectl set image deployment demo-istio demo-istio=docker.io/jsenon/demo-istio:latest --record
kubectl rollout undo deployment/demo-istio
kubectl scale deployment/demo-istio --replicas=10
while true; do wget -q -O- http://php-apache.demo.svc.cluster.local; done
kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1