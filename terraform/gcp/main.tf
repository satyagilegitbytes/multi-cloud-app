provider "azurerm" {
  features {}

  subscription_id = "00000000-0000-0000-0000-000000000000"

  # Optional: Register only specific providers (or use "none")
  resource_provider_registrations = [
    "Microsoft.Compute",
    "Microsoft.Storage",
    "Microsoft.Network"
  ]
}
