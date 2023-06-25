# Menggunakan base image Go Alpine
FROM golang:alpine

# Menentukan working directory dalam kontainer
WORKDIR /app

# Menyalin file go.mod untuk mengelola dependensi
COPY go.mod ./

# Mengunduh dan menginstal dependensi Go
RUN go mod download

# Menyalin seluruh kode sumber aplikasi
COPY . .

# Membangun aplikasi Go
RUN go build -o main .

# Menjalankan aplikasi saat kontainer berjalan
CMD ["./main"]

# Menentukan port yang akan digunakan
ARG APP_PORT
EXPOSE $APP_PORT
