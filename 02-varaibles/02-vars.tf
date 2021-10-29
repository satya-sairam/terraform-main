variable "sample" {
  default = 100
}
output "sample_output" {
  value = var.sample
}

variable "string" {
  default = "this is a string "
}

output "string-output" {
  value = var.string
}

variable "number" {
  default = 500
}

output "num-output" {
  value = var.number
}
variable "boolean" {
  default = "true"
}

output "boolean-output" {
  value = var.boolean
}

variable "list" {
  default = ["aws" ,900, true]
}

output "list-output" {
  value = var.list
}

variable "list-map-variable" {
  default = {
    training = " devops with aws",
    timing   = "7:30AM"
  }
}

output "map-var-output" {
  value = (var.list-map-variable["training"])
}

output "map-var-output2" {
  value = var.list-map-variable
}