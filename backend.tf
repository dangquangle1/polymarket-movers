terraform {
  backend "s3" {
    # Predates the move to the repo root. Changing it orphans the live state.
    key          = "projects/polymarket-movers/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
    # bucket + region supplied at init via -backend-config (backend.hcl / CI secrets)
  }
}
