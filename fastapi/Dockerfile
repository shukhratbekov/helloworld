# Используйте базовый образ Python
FROM python:3.9

# Создайте директорию приложения и переключитесь в нее
RUN mkdir /app
WORKDIR /app

# Установите зависимости проекта
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируйте файлы проекта в образ
COPY . /app/


# Запустите Gunicorn для Django
CMD ["uvicorn",  "main:app", "--host", "0.0.0.0", "--port", "8001"]