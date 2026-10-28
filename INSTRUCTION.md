# Azure Resource Group \& Storage Account Terraform Module

## Description

This Terraform module automates the provisioning of basic Azure infrastructure. It creates:

* An **Azure Resource Group** to organize your cloud resources.

* An **Azure Storage Account** (configured with **Standard** tier and **LRS** (Locally Redundant Storage) replication) deployed inside the created resource group.

## Input Parameters (Variables)

| Name | Description | Type | Default Value | Required |
| :--- | :--- | :--- | :--- | :--- |
| `resource_group_name` | The name of the resource group | `string` | `"terraform-task6-rg"` | Yes |
| `storage_account_name` | The name of the storage account (must be globally unique and lowercase) | `string` | `"tftask6storageaccount"` | Yes |
| `location` | The Azure region/location for all resources | `string` | `"Poland Central"` | Yes |

## Outputs

| Name | Description |
| :--- | :--- |
| `resource_group_id` | The unique ID of the created Azure Resource Group |
| `storage_account_id` | The unique ID of the created Azure Storage Account |

## Example of Usage

You can call this module in your root Terraform configuration like this:

```hcl
module "my_storage_module" {
source = "./path/to/your/module" # Update with your local path, git repo, or registry reference
resource_group_name  = "my-resource-group-name-rg"
storage_account_name = "mystorageaccountname"
location             = "Poland Central"
}