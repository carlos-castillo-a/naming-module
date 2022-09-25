# Castillo-a Naming Module
Provides Terraform naming maps for cloud resources which can be referenced by other modules.

## Usage
This module should be referenced by resource modules and Terraform Cloud for best use. An example of calling the module can be found below:

```
variable "environment" {
  default = "staging"
}

module "naming" {
  source = "git::https://github.com/carlos-castillo-a/naming-module.git"
}

locals {
  env_id              = [tbd]
  type                = [tbd]
}

```

## Input Variables

These are the following input variables that can will be 