terraform {
  source = "../../infrastructure-modules/httpbin"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  environment = "stage"
  port        = 8081
}
