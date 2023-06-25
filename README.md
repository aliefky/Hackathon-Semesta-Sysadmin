# Hackathon-Semesta-Sysadmin
Hackathon SEMESTA 2023 - SysAdmin
    by Alief Maulana Rizky

## Cisco Packet Tracer
Project Cisco ini menggunakan susunan topologi yang biasa digunakan _three tier layer_, dimana terdapat 3 fungsi layer :
- Core : Merupakan perangkat inti yang digunakan agar bisa terkoneksi ke antar jaringan, atau pun pengalokasian rules dan ip, disini saya menimplementasikan menggunakan perangkat router, switch L3.
- Distribusi : Merupakan perangkat yang bertugas mendistribusi kan, konfigurasi atau aturan yang telah dibuat oleh perangkat core.
- Access : Merupakan perangkat klien yag isinya berupa perangkat endpoint, seperti switch L2, dan PC.

Dalam tugas project ini, ada beberapa konfigurasi yang harus di terapkan sesuai dengan arahan, diantaranya seperti,
- Spanning Tree Protocol (STP),
- Etherchannel menggunakan LACP,
- VLAN Trunking,
- VLAN Access,
- HSRP (Hot Standby Router Protocol),
- ACL (Access Control List), yaitu ada PC endpoint yang tidak bisa mengakses server,
- Dynamic Routing menggunakan EIGRP,
Seperti pada lampiran file pakcet tracer, saya juga menambahkan konfigurasi dhcp agar tidak kesusahan input IP static saat akan menambah perangkat endpoint.

## Project Deployment Aplikasi

Cara Menggunakan Project Berikut adalah saya lampirkan project hackathon untuk perencanaan deployment aplikasi berupa lampiran dokumentasi serta file script berkaitan. Sistem deployment yang saya gunakan disini menggunakan dockerfile untuk mengisolasi file project menjadi sebuah image siap pakai.

1. Membuat Bash Script untuk melakukan Build app-semesta1 dan app-semesta2
2. Didalam Script tersebut terdapat script yang akan melakukan clone terhadap repo yang ingin di download
3. Didalam Script tersebut juga terdapat pemanggilan untuk Dockerfile nya
4. ketika semua sudah menjadi 1 dapat dijalankan script nya dengan cara . Builder.sh dan tunggu proses hingga selesai
5. app-semesta1 akan dapat diakses melalui port 3000 dan app-semesta2 akan dapat diakses melalui port 3001

#Alhamdulillah selesai, Tetap semangat jangan pernah menyerah, dan Tetap Tersenyum.
