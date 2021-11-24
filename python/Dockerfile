# Выкачиваем из dockerhub образ с python версии 3.9
FROM python:3.9
# Устанавливаем рабочую директорию для проекта в контейнере
WORKDIR /backend
# Скачиваем/обновляем необходимые библиотеки для проекта 
COPY requirements.txt /backend
RUN pip3 install --upgrade pip -r requirements.txt
RUN git clone https://github.com/minio/minio-py && cd minio-py && python setup.py install
# |ВАЖНЫЙ МОМЕНТ| копируем содержимое папки, где находится Dockerfile, 
# в рабочую директорию контейнера
COPY app.py /usr/local/lib/app/
COPY templates/ /usr/local/lib/app/templates/
COPY . /backend
# Устанавливаем порт, который будет использоваться для сервера
EXPOSE 5000
ENV APP_HOST=0.0.0.0
ENV APP_PORT=5000
ENV MINIO=minio:9000
#CMD ["python","/usr/local/lib/app/app.py"]

