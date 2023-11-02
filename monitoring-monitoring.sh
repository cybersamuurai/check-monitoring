#!/bin/bash

while true; do
    # Здесь можно добавить команды для проверки мониторинга.

    response=$(curl -s -o /dev/null -w "%{http_code}" https://monitoring.omp.ru/)

    if [ "$response" -eq "200" ]; then
        echo "Мониторинг работает нормально. Статус $response"
    else
        echo "Проблема с мониторингом! Статус $response"
        # Здесь можно добавить дополнительные команды для уведомления о проблеме
    fi
    
    # Пауза между проверками
    sleep 300
done
