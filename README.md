# Docker Super Mario Project with DevSecOps pipeline
Infinite Mario in HTML5 JavaScript - using Canvas and Audio elements

Reference:
https://techcommunity.microsoft.com/blog/appsonazureblog/getting-started-with-gitops-argo-and-azure-kubernetes-service/3288595

Steps to install ArgoCD on Kubernetes Cluster:

1) Create a namespace argocd using below command:
kubectl create namespace argocd   

2) Install argocd in argocd namespace using below command:
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

3) Verify argocd resources have been created by using below command:
kubectl get all -n argocd

4) Create a LoadBalancer to access argocd over internet in a browser:
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

5) Get LoadBalancer public ip and port of argocd using below command:
kubectl get svc -n argocd

6) Use default username as admin and get the initial password to login to argo cd using below command:

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

