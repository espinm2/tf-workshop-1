resource "docker_image" "httpbin" {
  name         = "mccutchen/go-httpbin:latest"
  keep_locally = false
}

resource "docker_container" "httpbin" {
  image = docker_image.httpbin.image_id
  name  = "dev-httpbin-${random_string.random_suffix.id}"
  ports {
    internal = 8080
    external = 8080
  }
}

resource "random_string" "random_suffix" {
  length  = 8
  special = false
}
