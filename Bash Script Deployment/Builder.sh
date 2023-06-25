#!/bin/bash

# Nama image Docker untuk aplikasi 1
APP1_IMAGE_NAME="semesta-app1"
# Nama kontainer Docker untuk aplikasi 1
APP1_CONTAINER_NAME="semesta-app1-container"
# Port yang akan digunakan oleh aplikasi 1
APP1_PORT=3000

# Nama image Docker untuk aplikasi 2
APP2_IMAGE_NAME="semesta-app2"
# Nama kontainer Docker untuk aplikasi 2
APP2_CONTAINER_NAME="semesta-app2-container"
# Port yang akan digunakan oleh aplikasi 2
APP2_PORT=3001

# Menghapus kontainer aplikasi 1&2 jika sudah ada
docker rm -f $APP1_CONTAINER_NAME
docker rm -f $APP2_CONTAINER_NAME

# Mengkloning repositori aplikasi 1&2 dari GitHub
git clone https://github.com/islamyakin/semesta-app1
git clone https://github.com/islamyakin/semesta-app2

# Pindah ke direktori repositori aplikasi 1
cd semesta-app1

# Menyalin file Dockerfile ke direktori repositori aplikasi 1
cp ../Dockerfile .

# Mengubah nama file .env.example menjadi .env untuk aplikasi 1
mv .env.example .env

# Mengubah konfigurasi APP2_URL pada file .env untuk aplikasi 1
sed -i 's|APP2_URL=|APP2_URL=http://127.0.0.1:3001|' .env

# Membuild image Docker untuk aplikasi 1 menggunakan Dockerfile
docker build -t $APP1_IMAGE_NAME --build-arg APP_PORT=$APP1_PORT .

# Menjalankan kontainer aplikasi 1 dari image yang telah dibangun
docker run -d --name $APP1_CONTAINER_NAME -p $APP1_PORT:$APP1_PORT $APP1_IMAGE_NAME

# Kembali ke direktori awal
cd ..

# Pindah ke direktori repositori aplikasi 2
cd semesta-app2

# Menyalin file Dockerfile ke direktori repositori aplikasi 2
cp ../Dockerfile .

# Membangun image Docker untuk aplikasi 2 menggunakan Dockerfile
docker build -t $APP2_IMAGE_NAME --build-arg APP_PORT=$APP2_PORT .

# Menjalankan kontainer aplikasi 2 dari image yang telah dibangun
docker run -d --name $APP2_CONTAINER_NAME -p $APP2_PORT:$APP2_PORT $APP2_IMAGE_NAME

# Kembali ke direktori awal
cd ..

# Menghapus direktori repositori aplikasi 1&2
rm -rf semesta-app1
rm -rf semesta-app2

