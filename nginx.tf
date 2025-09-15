resource "docker_container" "nginx" {               # Crea un contenedor Docker llamado "nginx"
  name  = "nginx-${terraform.workspace}"            # Nombre dinámico: nginx-dev, nginx-qa, etc., según el entorno (workspace)
  image = "nginx:stable-alpine3.21-perl"            # Imagen de NGINX liviana basada en Alpine, con soporte para Perl

  ports {
    internal = 80                                    # Puerto interno del contenedor donde escucha NGINX
    external = var.nginx_external_port[terraform.workspace]   # Puerto externo en el host, definido por entorno (dev, qa, prod)
  }
}
