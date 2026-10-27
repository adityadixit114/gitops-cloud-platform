# Automated Multi-Cloud GitOps Delivery Platform

Production-ready infrastructure as code (IaC) and declarative GitOps continuous delivery pipeline powered by Kubernetes, Terraform, ArgoCD, and Trivy security scanning.

## Architecture
- **Infrastructure as Code**: Modular Terraform code provisioning AWS multi-AZ VPCs, IAM least-privilege roles, and managed EKS clusters.
- **GitOps Orchestration**: ArgoCD application manifests continuously reconciling cluster state against the GitHub repository.
- **DevSecOps Pipeline**: Automated container image scanning with Trivy and static code analysis before deployment promotion.
- **Observability**: Prometheus metrics scraping and Grafana dashboards for cluster-wide telemetry.

## Directory Structure
```
├── terraform/       # Modular Terraform configuration (VPC, EKS)
├── k8s/             # Kubernetes deployment manifests & ArgoCD apps
└── .github/         # CI/CD GitHub Actions workflow with Trivy scan
```
