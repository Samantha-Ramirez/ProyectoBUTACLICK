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

- Detener contenedores:

```bash
docker compose stop
```

- Bajar contenedores y red:

```bash
docker compose down
```

## Equipo de desarrollo

- Samantha Ramirez
- Diego Perdomo
