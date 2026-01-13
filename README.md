# demo-service

A tiny HTTP service used to demonstrate:
- health checks (`/healthz`, `/readyz`)
- deployment via Helm
- HPA, PDB, NetworkPolicy, and resource requests/limits
- integration testing in CI on kind

## Local build
```bash
docker build -t demo-service:dev .
