FROM python:3.10-slim-buster

WORKDIR /app

COPY . .

# Если при установке зависимостей появляются ошибки, то можно раскомментировать следующую строку:
# RUN apt-get update && apt-get install -y build-essential libfreetype6-dev libpng-dev pkg-config && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --no-cache-dir -r requirements.txt

# Устанавливаем права на исполнение скрипта, чтобы без ошибок запускался
RUN chmod +x start.sh

CMD ["sh", "-c", "./start.sh"]
