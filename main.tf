# Resource Mapping
variable "type-map" {
    type    = map

    default = {
        # AWS resources
        "aws_s3_bucket"          = "s3"


    }
}

# Environment Mapping
variable "env-map" { 
    type    = map

    default = {
    "d"           = "dev"
    "dev"         = "dev"
    "development" = "dev"
    "t"           = "test"
    "test"        = "test"
    "testing"     = "test"
    "u"           = "uat"
    "uat"         = "uat"
    "q"           = "qa"
    "qa"          = "qa"
    "s"           = "stg"
    "staging"     = "stg"
    "p"           = "prod"
    "prod"        = "prod"
    "production"  = "prod"
    "sandbox"     = "sbx"
    "sbx"         = "sbx"
    "x"           = "sbx"
    }
}