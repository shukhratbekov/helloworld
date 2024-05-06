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

# Соберите статические файлы Django
RUN python manage.py collectstatic --noinput

# Запустите Gunicorn для Django
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi:application"]
