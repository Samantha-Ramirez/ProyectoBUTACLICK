# ButaClick - Plataforma Web de Gestión y Compra de Entradas

Aplicación web con frontend en Vue.js y backend en Laravel, ejecutada con arquitectura de contenedores Docker.

## Instalación e inicio

### Requisitos

- Docker Desktop
- Docker Compose

### Pasos para iniciar el proyecto

1. Clona el repositorio y entra a la carpeta del proyecto.
2. Ejecuta el comando de construcción e inicio:

```bash
docker compose up --build -d
```

3. Abre la aplicación en:

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

- Pausar y eliminar contenedores, red, volúmenes (reiniciar bd desde cero):

```bash
docker compose down --volumes
```

## Equipo de desarrollo

- Samantha Ramirez
- Diego Perdomo
