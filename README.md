# core-banking-api-charts

Helm chart for the TT Mobile Banking MCP core-banking app (see `Chart.yaml`).

## CI/CD

- **Publish Helm chart (OCI)** (`.github/workflows/publish-helm-chart.yml`): on push to `main` or `master` (when chart files or this workflow change), the chart is packaged and pushed to an OCI registry.
  - **GHCR (default):** uses `GITHUB_TOKEN`; chart is pushed to `ghcr.io/<owner>/core-banking-api-chart`.
  - **Oracle OCIR (or other):** set repo Variables `OCI_REGISTRY`, `OCI_CHART_REPO` and Secrets `OCI_REGISTRY_USERNAME`, `OCI_REGISTRY_PASSWORD`.
- **Release Helm chart** (`.github/workflows/release-helm-chart.yml`): manual run from Actions. Enter a version (e.g. `0.2.0`); the workflow bumps `Chart.yaml` version and appVersion, commits, creates tag `v<version>`, and pushes the chart to OCI.

- **kyc-api/**, **produit-api/**, **card-management-api/**, **invest-api/**: first-party API subcharts
- **ai-api/**: optional ML API (disabled by default)

apim/  
├── templates/  
├── Chart.yaml        
├── values.yaml

🧪 Installation

helm dependency update
helm upgrade -install core-banking-api  . -f valuesfr.yaml --namespace backend-eu   --create-namespace
helm upgrade -install core-banking-api  . -f values.yaml --namespace backend-tn   --create-namespace


TODO
Security no transfer response all data