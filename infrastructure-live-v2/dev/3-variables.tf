variable "environment" {
  description = "The environment of this application"
  type        = string
  default     = "dev"
}

variable "port" {
  description = "The external port to expose this app on localhost"
  type        = number
  default     = 8080
}
