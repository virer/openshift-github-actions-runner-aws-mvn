# openshift-github-actions-runner-aws-mvn
GitHub Action runner to deploy on OpenShift, 

the image include AWS cli, docker(to be able to push container image) and maven/java

### Basic usage: 
```console
$ docker pull scaps/redhat-openshift-github-actions-runner:latest
```
### Real Helm usage :
```console
$ helm install actions-runner openshift-actions-runner/actions-runner \
  --namespace pipe-gha-runner-$REPONAME \
  --set-string runnerImage=docker.io/scaps/redhat-openshift-github-actions-runner \
  --set-string runnerTag=latest \
  --set-string githubPat=$GITHUB_PAT \
  --set-string githubOwner=$GITHUB_OWNER \
  --set-string githubRepository=$REPONAME \
  --set-string cpuRequest=1200m \
  --set-string cpuLimit=2400m \
  --set-string memoryRequest=2Gi \
  --set-string memoryLimit=4Gi
```
