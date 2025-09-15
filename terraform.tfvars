
nginx_external_port = {              # Mapa que define los puertos externos para Nginx según el entorno (workspace)
  redis_host_port = 32768            # (No relacionado con Nginx) Puerto externo expuesto por el contenedor Redis
  dev  = 3000                        # Puerto asignado para el entorno de desarrollo
  qa   = 4000                        # Puerto asignado para el entorno de pruebas (QA)
  prod = 81                          # Puerto asignado para el entorno de producción
}
