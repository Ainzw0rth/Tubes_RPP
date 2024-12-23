# Tugas IF4070 - Representasi Pengetahuan dan Penalaran
> Tugas Knowledge Based System - Career Recommendation System

## Anggota Kelompok
<table>
    <tr>
        <td>No.</td>
        <td>Nama</td>
        <td>NIM</td>
    </tr>
    <tr>
        <td>1.</td>
        <td>Jason Rivalino</td>
        <td>13521008</td>
    </tr>
    <tr>
        <td>2.</td>
        <td>Muhammad Equilibrie Fajria</td>
        <td>13521047</td>
    </tr>
    <tr>
        <td>2.</td>
        <td>Louis Caesa Kesuma</td>
        <td>13521069</td>
    </tr>
</table>

## Table of Contents
* [Deskripsi Singkat](#deskripsi-singkat)
* [Video Presentasi](#video-presentasi)
* [Requirements](#requirements)
* [Cara Menjalankan Program](#cara-menjalankan-program)
* [Penjelasan Kode](#penjelasan-kode)
* [Arsitektur Sistem](#arsitektur-sistem)
* [Daftar Pencarian Fakta](#daftar-pencarian-fakta)
* [Acknowledgements](#acknowledgements)

## Deskripsi Singkat 
Program yang dibuat dalam pengerjaan tugas ini merupakan program untuk memberikan rekomendasi pekerjaan yang sesuai berdasarkan minat, keahlian, pengalaman, dan durasi kerja dari seseorang. Dengan adanya pengetahuan berbasis KBS ini diharapkan dapat membantu pengguna untuk mendapatkan rekomendasi pekerjaan sesuai dengan informasi kebutuhan yang dimiliki.

## Video Presentasi
[Video Presentasi KBS Career Recommendation System](https://drive.google.com/file/d/1QBj0T0AfdKww865MX5C3gm60kK3BVZnY/view?usp=drive_link)

## Requirements
1. Clips Programming Language (6.3 Version)

## Cara Menjalankan Program
Langkah-langkah proses setup program adalah sebagai berikut:
1. Clone repository ini
2. Membuka Clips yang sudah diinstalasi
3. Membuka file `job-recommendation.clp` yang terdapat pada root folder dengan menu load
4. Setelah berhasil diload, akan muncul informasi yang tersimpan berdasarkan fakta yang sudah ada dengan contoh gambar berikut:<br><br>
![Screenshot 2024-12-24 013823](https://github.com/user-attachments/assets/693fa67c-ee9a-42c2-8b93-e4743934917c) <br>
5. Ketikkan command `reset` untuk reset dan memastikan semua fakta masih kosong
6. Ketikkan command `run` untuk menjalankan program dan menampilkan rekomendasi pekerjaan<br>
   Berikut merupakan contoh hasilnya ketika sistem rekomendasi pekerjaan sudah muncul:
   
   ![Screenshot 2024-12-24 014529](https://github.com/user-attachments/assets/40039a15-f12a-4ee4-885d-a16f95e1cefc)

   Untuk daftar fakta yang ada juga bisa dicek pada panel sebelah seperti berikut:<br><br>
   ![image](https://github.com/user-attachments/assets/e7285067-d836-436a-a0e9-846a0428426b)

## Penjelasan Kode
### Template Masukan <br>
Merupakan template awal dari program, disini templatenya merupakan kebutuhan pengetahuan untuk rekomendasi kerja seperti minat, keahlian, pengalaman, dan durasi. Terdapat juga template untuk menampilkan nama pekerjaan.
```
(deftemplate person
   (slot minat)
   (multislot keahlian)
   (slot pengalaman)
   (slot durasi))

(deftemplate pekerjaan
   (slot nama))
```
### Aturan Rekomendasi Pekerjaan <br>
Pendefinisian aturan pekerjaan, disini terdapat nama rekomendasi dengan daftar pengisian pengetahuan dan rekomendasi pekerjaan
```
(defrule recommend-ui-ux-designer
   (person (minat "Design")
       	(keahlian $?before "Figma" "Web Design" "UI/UX" $?after)
       	(pengalaman "mendesain aplikasi")
       	(durasi ?durasi&:(>= ?durasi 3)))
   =>
   (assert (pekerjaan (nama "UI/UX Designer")))
   (printout t "Recommended job: UI/UX Designer" crlf))
```
### Assert informasi kerja
Merupakan proses untuk memasukkan pengetahuan yang sesuai untuk mendapatkan fakta terkait rekomendasi pekerjaan
```
(assert (person (minat "Design")
            	(keahlian "Figma" "Web Design" "UI/UX")
            	(pengalaman "mendesain aplikasi")
            	(durasi 3)))
```
### Menghapus daftar fakta
Menghapus fakta yang sudah ada dari daftar
```
(retract <nomor fakta yang dihapus>)
```
### Menghapus aturan rule
Menghapus aturan yang sudah pernah dibuat sebelumnya
```
(undefrule <nama rule yang dihapus>)
```

## Arsitektur Sistem
![Screenshot 2024-12-24 013256](https://github.com/user-attachments/assets/0888775f-41a4-4104-bd41-9b06b0faf92c)

## Daftar Pencarian Fakta
https://docs.google.com/document/d/1FNwP-FwSG37Ue8mFfyMNnkMGQiEJmw0RsWfdgw0QpCA/edit?tab=t.0
<br> Sumber: berbagai website penyedia lowongan pekerjaan seperti Linkedin, Glints, Jobstreet, dsb.

## Acknowledgements
- Tuhan Yang Maha Esa
- Pak Windy Gambetta sebagai Dosen Representasi Pengetahuan dan Penalaran IF4070
