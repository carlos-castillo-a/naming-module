# Naming Module
Provides Terraform naming maps for cloud resources which can be referenced by other modules.

## Usage
This module should be referenced by other resource modules and Terraform Cloud. An example of calling the module can be found below:

```
variable "environment" {
  default     = "staging"
}

module "naming" {
  source      = "git::https://github.com/carlos-castillo-a/naming-module.git"
}

locals {
  env_id      = "${lookup(module.naming.env-map, var.environment, "ENV")}"
  type        = "${lookup(module.naming.type-map, "aws_s3_bucket", "TYP")}"
}
```

## Input Variables
These are the following input variables that will be 

| Name         | Type    | Default                                       | Required | Description
| ------------ | ------- | --------------------------------------------- | -------- | --------------------------------------
| `type-map`   |  map    | `"aws_s3_bucket"  = "bucket"`                 |          | Resource mapping based on resource type 
| `env-map`    |  map    | `"d"  = "dev"`<br>`"dev"  = "dev"`<br>`"development"  = "dev"`<br>`"t"  = "test"`<br>`"test"   = "test"`<br>`"testing"  = "test"`<br>`"u"  = "uat"`<br>`"uat"  = "uat"`<br>`"q"  = "qa"` <br>`"qa"  = "qa"`<br>`"s"  = "stg"`<br>`"staging"  = "stg"`<br>`"p"  = "prod"`<br>`"prod"  = "prod"`<br>`"production"  = "prod"`<br>`"sandbox"   = "sbx"`<br>`"sbx"  = "sbx"`<br>`"x"  = "sbx"` |          | Environment mapping based on input variable

## Output Variables
Variables that can be referenced from this module

| Name       | Description            |
| ---------- | ---------------------- |
| `env-map`  | Environment mapping    |
| `type-map` | Resource type mapping  |