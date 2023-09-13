# Используем официальный образ Node.js
FROM node:18-slim

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json (если есть) для установки зависимостей
COPY ./package.json .
COPY ./package-lock.json .

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы приложения
COPY . .

EXPOSE 3000
# Запускаем приложение
CMD ["npm", "run",  "start-watch"]
