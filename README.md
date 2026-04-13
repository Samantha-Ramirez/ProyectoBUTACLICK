# ButaClick - Plataforma Web de Gestión y Compra de Entradas

Aplicación web con frontend en Vue.js y backend en Laravel, ejecutada con arquitectura de contenedores Docker.

## Instalación e inicio

### Requisitos

- Docker Desktop
- Docker Compose

### Pasos completos para levantar el proyecto (equipo)

1. Clona el repositorio y entra a la carpeta del proyecto.
2. Crea el archivo `.env` desde la plantilla `.env.example`.
3. Ajusta en `.env` las variables necesarias.
4. Construye e inicia contenedores:

```bash
docker compose up --build -d
```

5. Verifica estado de servicios:

```bash
docker compose ps
```

6. Comprueba conexión a base de datos desde Laravel:

```bash
docker compose exec backend php artisan tinker --execute="DB::connection()->getPdo(); echo 'OK DB';"
```

7. Valida migraciones:

```bash
docker compose exec backend php artisan migrate:status
```

8. Abre la aplicación en:

```text
http://localhost
```

### Comandos útiles

- Ver logs:

```bash
docker compose logs -f
```

- Pausar contenedores:

```bash
docker compose stop
```

- Pausar y eliminar contenedores, red:

```bash
docker compose down
```

- Pausar y eliminar contenedores, red, volúmenes:

```bash
docker compose down --volumes
```

- Pausar y eliminar contenedores, red, imágenes:

```bash
docker compose down --rmi local
```

## Equipo de desarrollo

- Samantha Ramirez
- Diego Perdomo
