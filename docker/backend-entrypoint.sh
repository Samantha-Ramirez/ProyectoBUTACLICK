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

exec php-fpm
