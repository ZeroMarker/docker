kubectl apply -f .\deployment.yml

minikube start --embed-certs

kubectl get pods

kubectl get services

minikube service finance-np-services

kubectl delete -f .\deployment.yml

