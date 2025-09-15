resource "docker_container" "nginx" {            # Se define un contenedor Docker llamado "nginx"
  name  = "nginx-${terraform.workspace}"         # Nombre del contenedor, dinámico según el workspace (ej: nginx-dev)
  image = "nginx:stable-alpine3.21-perl"         # Imagen de Docker a usar (Nginx versión estable con Perl sobre Alpine)

  ports {
    internal = 80                                # Puerto interno dentro del contenedor (por defecto en Nginx)
    external = var.nginx_external_port[terraform.workspace]   # Puerto externo definido por variable según el workspace
  }
}
