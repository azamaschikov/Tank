#!/usr/bin/env bash

# Поднимаем Yandex.Tank + InfluxDB + Grafana
docker-compose --file $(pwd)/docker-compose.yml up --detach

# Запускаем Yandex.Tank на цель
docker-compose run --rm tank --quiet --config config.yml
