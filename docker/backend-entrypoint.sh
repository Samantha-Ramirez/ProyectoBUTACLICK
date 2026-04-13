#!/bin/sh
set -e

cd /var/www/html

mkdir -p storage/framework/cache/data storage/framework/sessions storage/framework/views storage/framework/testing storage/logs bootstrap/cache
mkdir -p /tmp/laravel-views
chmod -R 777 storage bootstrap/cache || true
chmod -R 777 /tmp/laravel-views || true

if [ ! -f vendor/autoload.php ]; then
    echo "[backend] vendor no existe. Ejecutando composer install..."
    composer install --no-interaction --prefer-dist --no-dev --optimize-autoloader --no-progress
else
    echo "[backend] vendor detectado. Saltando composer install."
fi

echo "[backend] Esperando a PostgreSQL..."
delay=2
for attempt in 1 2 3 4 5 6 7 8 9 10 11 12; do
    if php artisan tinker --execute="DB::connection()->getPdo();" >/dev/null 2>&1; then
        echo "[backend] PostgreSQL listo."
        break
    fi

    if [ "$attempt" = "12" ]; then
        echo "[backend] PostgreSQL no respondio despues de 12 intentos."
        exit 1
    fi

    echo "[backend] PostgreSQL aun no esta listo. Reintentando en ${delay}s (${attempt}/12)..."
    sleep "$delay"

    if [ "$delay" -lt 10 ]; then
        delay=$((delay * 2))
    fi
done

echo "[backend] Ejecutando migraciones..."
php artisan migrate --force --no-interaction
echo "[backend] Migraciones aplicadas correctamente."

exec php-fpm
