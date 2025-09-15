
nginx_external_port = {
  redis_host_port = 32768       # Puerto externo fijo para el contenedor de Redis (puede usarse como variable si se conecta desde otro contenedor)
  dev  = 3000                   # Puerto externo para el entorno de desarrollo (workspace "dev")
  qa   = 4000                   # Puerto externo para el entorno de pruebas/calidad (workspace "qa")
  prod = 81                     # Puerto externo para el entorno de producción (workspace "prod")

