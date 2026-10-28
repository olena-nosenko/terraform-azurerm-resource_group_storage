\# Azure Resource Group \& Storage Account Terraform Module



\## Description

This Terraform module automates the provisioning of basic Azure infrastructure. It creates:

\* An \*\*Azure Resource Group\*\* to organize your cloud resources.

\* An \*\*Azure Storage Account\*\* (configured with \*\*Standard\*\* tier and \*\*LRS\*\* (Locally Redundant Storage) replication) deployed inside the created resource group.



\## Input Parameters (Variables)



| Name | Description | Type | Default Value | Required |

| :--- | :--- | :--- | :--- | :--- |

| `resource\_group\_name` | The name of the resource group | `string` | `"terraform-task6-rg"` | Yes |

| `storage\_account\_name` | The name of the storage account (must be globally unique and lowercase) | `string` | `"tftask6storageaccount"` | Yes |

| `location` | The Azure region/location for all resources | `string` | `"Poland Central"` | Yes |



\## Outputs



| Name | Description |

| :--- | :--- |

| `resource\_group\_id` | The unique ID of the created Azure Resource Group |

| `storage\_account\_id` | The unique ID of the created Azure Storage Account |



\## Example of Usage



You can call this module in your root Terraform configuration like this:



```hcl

module "my\_storage\_module" {

&#x20; source = "./path/to/your/module" # Update with your local path, git repo, or registry reference



&#x20; resource\_group\_name  = "my-resource-group-name-rg"

&#x20; storage\_account\_name = "mystorageaccountname"

&#x20; location             = "Poland Central"

}

