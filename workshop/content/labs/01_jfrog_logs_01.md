
### Kubernetes Cluster Access Config 

<br/>

Prepare kubeconfig file

Click on the command below, paste the contents of your kube config file and then type `EOF` to save the file:  
  ```execute
  cat > ~/.kube/gke-config << "EOF"
  ```

  ```execute
  export KUBECONFIG=/home/eduk8s/.kube/gke-config
  ```

Prepare gcloud account:
  ```execute
  ./google-cloud-sdk/bin/gcloud init --project soleng-dev --skip-diagnostics
  ```

SSH into Artifactory server instance:
  ```execute
  clear
  kubectl exec artifactory-0 -it -n artifactory -c artifactory -- /bin/bash
  ```


---