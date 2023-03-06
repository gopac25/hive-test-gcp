
# E2E Implementaion of Deployments

This is the repo for creating infrastructure and deploying applications on it using code as much as possible.

### Tools Used:
```bash
Cloud Platform: Google Cloud Platform
Cloud Services: Networking, GKE, Cloud Storage, Artifact Registry, IAM
CICD: GitHub Actions
Infrastructure as Code: Terraform
Application Deployments: Helm Charts
```


### Prerequisites:

- Google Cloud Account
- GitHub Repo
- Service account creation in GCP and Create key in json format.
- Assign required roles
```bash
Artifact Registry Administrator
Compute Network Admin
Kubernetes Engine Admin
Service Account User
Storage Admin
```
- Add GCP Credentails in GitHub Action Secrets