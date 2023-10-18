#!/bin/bash

# Запустить Firefox на странице сseu.ru в полноэкранном режиме
firefox www.sseu.ru -kiosk & > /dev/null 2>&1

# Бесконечный цикл для проверки активности пользователя
while true; do
  idle_time=xprintidle # Получить время бездействия пользователя в миллисекундах
  if [ $idle_time -gt 10000 ]; then # Если бездействие пользователя превышает 1 минуту
    firefox www.sseu.ru -kiosk  & > /dev/null 2>&1  # Обновить страницу в Firefox
    sleep 5  # Ждать 5 секунд перед проверкой снова
  fi
  sleep 1  # Ждать 1 секунду перед проверкой снова
done