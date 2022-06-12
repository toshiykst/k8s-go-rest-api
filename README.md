# k8s-golang-app
Sample golang app running on k8s.

## Using for k8s
- kubectl
- skaffold
- kustomize

## Command
```bash
# Start server for local(using skaffold)
$ make dev

# Build docker image.
$ make build-image

# Push docker image into repository
$ make push-image

# Build docker image and push docker image into repository.
$ make release-image

# Deploy to k8s cluster (※ The target env name is required.)
$ make deploy env=<dev|stg|prod>

```
## Note
Before running this app, please replace `YOUR_REPOSITORY` in Makefile and k8s/base/deployment.yaml into your repository name.
